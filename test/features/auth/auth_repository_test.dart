import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/session/token_store.dart';
import 'package:jc_connect_app/src/features/auth/data/auth_repository.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';

/// Answers every request with [status] and [body]; keeps the last request.
class _Adapter implements HttpClientAdapter {
  _Adapter(this.status, this.body);
  final int status;
  final Object body;
  late RequestOptions request;

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

AuthRepository _repo(_Adapter adapter) => AuthRepository(
  Dio(BaseOptions(headers: {'X-Client': 'mobile'}))
    ..httpClientAdapter = adapter,
  const TokenStore(FlutterSecureStorage()),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));

  test('login with tokens saves them and sends email and password', () async {
    final adapter = _Adapter(200, {
      'data': {
        'tokens': {'access': 'a1', 'refresh': 'r1'},
        'mfa': null,
        'schools': null,
      },
    });

    final result = await _repo(adapter).login(email: 'm@x.co', password: 'pw');

    expect(result, isA<LoginSignedIn>());
    expect(adapter.request.path, '/auth/login');
    expect(adapter.request.data, {'email': 'm@x.co', 'password': 'pw'});
    expect(
      await const FlutterSecureStorage().read(key: 'refresh_token'),
      'r1',
    );
  });

  test('login with 2FA returns the challenge', () async {
    final adapter = _Adapter(200, {
      'data': {
        'tokens': null,
        'mfa': {'challenge': 'c1', 'expires_in': 300},
        'schools': null,
      },
    });

    final result = await _repo(adapter).login(email: 'm@x.co', password: 'pw');

    expect((result as LoginNeedsCode).challenge, 'c1');
  });

  test('login in several schools returns them', () async {
    final adapter = _Adapter(200, {
      'data': {
        'tokens': null,
        'mfa': null,
        'schools': [
          {'id': 's1', 'name': 'Jamaica College', 'code': 'jc'},
        ],
      },
    });

    final result = await _repo(adapter).login(email: 'm@x.co', password: 'pw');

    expect((result as LoginPickSchool).schools.single.name, 'Jamaica College');
  });

  test('an error envelope becomes an ApiException with its code', () async {
    final adapter = _Adapter(401, {
      'data': null,
      'error': {'code': 'invalid_credentials', 'detail': 'Invalid.'},
    });

    await expectLater(
      _repo(adapter).login(email: 'm@x.co', password: 'pw'),
      throwsA(
        isA<ApiException>()
            .having((e) => e.status, 'status', 401)
            .having((e) => e.code, 'code', 'invalid_credentials'),
      ),
    );
  });
}
