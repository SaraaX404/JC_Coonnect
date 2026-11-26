import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';

/// Answers every request with [status] and [body]; keeps the last request.
class _Adapter implements HttpClientAdapter {
  _Adapter(this.status, this.body);
  final int status;
  final Object body;
  late RequestOptions request;

  /// The JSON body, however the client handed it to Dio.
  Map<String, Object?> get sent => jsonDecode(switch (request.data) {
    final String raw => raw,
    final other => jsonEncode(other),
  }) as Map<String, Object?>;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    request = options;
    return ResponseBody.fromString(
      jsonEncode(body),
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

SignUpRepository _repo(_Adapter adapter) =>
    SignUpRepository(JcApi(Dio()..httpClientAdapter = adapter));

const _application = {
  'data': {
    'member_type': 'student',
    'status': 'pending',
    'joined_at': '2026-11-26T10:20:00Z',
  },
};

SignUpData _student() => SignUpData()
  ..role = JcRole.student
  ..name = 'Kemar  Anthony Brown'
  ..email = 'kemar.brown@example.com'
  ..phone = '+1 876 555-0142'
  ..password = 'Secret#123'
  ..signupToken = 'signup-token'
  ..studentId = '0001'
  ..schoolClass = const ClassOption(id: 'class-1', name: '10B', gradeId: 'g')
  ..dateOfBirth = '14 / 03 / 2010'
  ..address = '12 Hope Road'
  ..guardians = [
    const GuardianContactRequest(
      fullName: 'Andrea Brown',
      relationship: 'Mother',
      email: 'andrea.brown@example.com',
    ),
  ];

void main() {
  test('verify code returns the sign-up token', () async {
    final adapter = _Adapter(200, {
      'data': {'signup_token': 'signup-token', 'expires_in': 1800},
    });

    final token = await _repo(adapter).verifyCode('a@b.co', '123456');

    expect(token, 'signup-token');
    expect(adapter.request.path, '/api/v1/signup/email-code/verify');
    expect(adapter.sent, containsPair('code', '123456'));
    expect(adapter.sent, contains('school_id'));
  });

  test(
    'options for a school with nothing set up read as empty lists',
    () async {
      // The local backend's answer before any academic setup.
      final adapter = _Adapter(200, {
        'data': {
          'school': {'name': 'Jamaica College', 'email_domain': 'jc.edu.jm'},
          'terms': null,
          'current_year': null,
          for (final list in [
            'grades',
            'classes',
            'academic_tracks',
            'houses',
            'subjects',
            'departments',
            'sports',
            'clubs',
          ])
            list: <Object>[],
          'choices': {
            for (final list in [
              'age_groups',
              'coaching_roles',
              'leadership_roles',
              'giving_back',
              'giving_hours',
            ])
              list: <Object>[],
          },
        },
      });

      final options = await _repo(adapter).options('signup-token');

      expect(options.currentYear, isNull);
      expect(options.classes, isEmpty);
      expect(adapter.request.headers['X-Signup-Token'], 'signup-token');
    },
  );

  test('check student sends the sign-up token and returns the match', () async {
    final adapter = _Adapter(200, {
      'data': {'match': false},
    });

    final match = await _repo(
      adapter,
    ).checkStudent('signup-token', number: '0001', fullName: 'Kemar Brown');

    expect(match, isFalse);
    expect(adapter.request.headers['X-Signup-Token'], 'signup-token');
    expect(adapter.sent, {
      'student_number': '0001',
      'full_name': 'Kemar Brown',
    });
  });

  test(
    'submit a student sends profile, class, guardians and birthday',
    () async {
      final adapter = _Adapter(201, _application);

      final at = await _repo(adapter).submit(_student());

      expect(at, DateTime.utc(2026, 11, 26, 10, 20));
      final sent = adapter.sent;
      expect(sent['member_type'], 'student');
      expect(sent['first_name'], 'Kemar');
      expect(sent['last_name'], 'Anthony Brown');
      expect(sent['phone'], '+18765550142');
      expect(sent['birthday'], '2010-03-14');
      expect(sent['accept_terms'], isTrue);
      expect(sent['student_profile'], {'student_number': '0001'});
      expect(sent['enrollment'], {'class_id': 'class-1'});
      expect(
        (sent['guardians']! as List).single,
        containsPair('email', 'andrea.brown@example.com'),
      );
      expect(sent, isNot(contains('children')));
    },
  );

  test('submit a parent sends the son as a child', () async {
    final adapter = _Adapter(201, _application);
    final data = _student()
      ..role = JcRole.parent
      ..sonName = 'Kemar Brown'
      ..relationship = 'Mother';

    await _repo(adapter).submit(data);

    expect(adapter.sent['member_type'], 'guardian');
    expect(adapter.sent['children'], [
      {
        'full_name': 'Kemar Brown',
        'student_number': '0001',
        'relationship': 'Mother',
      },
    ]);
    expect(adapter.sent, isNot(contains('guardians')));
    expect(adapter.sent, isNot(contains('birthday')));
  });

  test('submit refused shows the envelope code', () async {
    final adapter = _Adapter(409, {
      'data': null,
      'error': {'code': 'phone_exists', 'detail': 'Phone already in use.'},
    });

    await expectLater(
      _repo(adapter).submit(_student()),
      throwsA(
        isA<ApiException>()
            .having((e) => e.status, 'status', 409)
            .having((e) => e.code, 'code', 'phone_exists'),
      ),
    );
  });

  test('date of birth parses only real past dates', () {
    expect(SignUpData.isoDate('14 / 03 / 2010'), '2010-03-14');
    expect(SignUpData.isoDate('31/02/2010'), isNull);
    expect(SignUpData.isoDate('14 03'), isNull);
    expect(SignUpData.isoDate('01/01/2999'), isNull);
  });
}
