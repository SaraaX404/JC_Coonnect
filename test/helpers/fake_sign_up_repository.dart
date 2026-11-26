import 'package:flutter_riverpod/misc.dart';
import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';

/// What /signup/options returns for a school with one grade, class and track.
final testOptions = Options2.fromJson({
  'school': {'name': 'Jamaica College', 'email_domain': 'jc.edu.jm'},
  'terms': null,
  'current_year': {'id': 'year-1', 'name': '2026 / 2027'},
  'grades': [
    {'id': 'grade-10', 'name': 'Grade 10'},
  ],
  'classes': [
    {'id': 'class-10b', 'name': '10B', 'grade_id': 'grade-10'},
  ],
  'academic_tracks': [
    {'id': 'track-1', 'name': 'Science'},
  ],
  'houses': <Object>[],
  'subjects': <Object>[],
  'departments': <Object>[],
  'sports': <Object>[],
  'clubs': <Object>[],
  'choices': {
    'age_groups': <Object>[],
    'coaching_roles': <Object>[],
    'leadership_roles': <Object>[],
    'giving_back': <Object>[],
    'giving_hours': <Object>[],
  },
});

/// Answers each call from its callback; by default everything succeeds.
class FakeSignUpRepository implements SignUpRepository {
  FakeSignUpRepository({
    this.onSendCode = _sent,
    this.onVerifyCode = _token,
    this.onCheckStudent = _found,
    this.onSubmit = _received,
  });

  Future<void> Function(String email) onSendCode;
  Future<String> Function(String code) onVerifyCode;
  Future<bool> Function(String number, String? fullName) onCheckStudent;
  Future<DateTime> Function(SignUpData data) onSubmit;

  static Future<void> _sent(String _) async {}
  static Future<String> _token(String _) async => 'signup-token';
  static Future<bool> _found(String _, String? _) async => true;
  static Future<DateTime> _received(SignUpData _) async =>
      DateTime(2026, 11, 26, 11, 20);

  Override get asOverride => signUpRepositoryProvider.overrideWithValue(this);

  @override
  Future<void> sendCode(String email) => onSendCode(email);

  @override
  Future<String> verifyCode(String email, String code) => onVerifyCode(code);

  @override
  Future<Options2> options(String token) async => testOptions;

  @override
  Future<bool> checkStudent(
    String token, {
    required String number,
    String? fullName,
  }) => onCheckStudent(number, fullName);

  @override
  Future<DateTime> submit(SignUpData data) => onSubmit(data);
}
