import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/l10n/l10n.dart';

/// From `--dart-define-from-file=env/<env>.json`, as [originFor] adjusts it.
String get apiOrigin => originFor(
  const String.fromEnvironment('API_ORIGIN'),
  defaultTargetPlatform,
);

/// The Android emulator reaches the Mac's `localhost` at 10.0.2.2 (adb
/// reverse turned out unreliable). Other origins are left alone.
// ponytail: a USB Android phone can't reach 10.0.2.2; point API_ORIGIN at
// the Mac's LAN address for that.
@visibleForTesting
String originFor(String origin, TargetPlatform platform) =>
    platform == TargetPlatform.android
    ? origin.replaceFirst('://localhost', '://10.0.2.2')
    : origin;

/// The school this app is for. Sign-up needs it before there is an account.
const schoolId = String.fromEnvironment('SCHOOL_ID');

/// The backend checks `X-Client` against the token audience on every call.
final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      // Generated paths start with /api/v1.
      baseUrl: apiOrigin,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      headers: {'X-Client': 'mobile'},
    ),
  ),
);

/// The generated client (`packages/jc_api`, `make api`).
final jcApiProvider = Provider<JcApi>((ref) => JcApi(ref.watch(dioProvider)));

/// A failed API call. [status] is null when the server wasn't reached, 0
/// when its answer couldn't be read.
class ApiException implements Exception {
  const ApiException(this.status, [this.code]);
  final int? status;

  /// The envelope's `error.code`, like `invalid_credentials`.
  final String? code;

  /// What to tell the user when the screen has nothing more specific.
  String message(AppLocalizations l10n) => status == null
      ? l10n.systemOfflineMessage
      : l10n.systemServerErrorMessage;

  @override
  String toString() => 'ApiException($status, $code)';
}

/// Runs a generated-client call; every failure becomes an [ApiException].
Future<T> apiCall<T>(Future<T> Function() request) async {
  try {
    return await request();
  } on DioException catch (e) {
    final code = switch (e.response?.data) {
      {'error': {'code': final String code}} => code,
      _ => null,
    };
    throw ApiException(e.response?.statusCode, code);
  } on Exception {
    // The server answered, but not in the shape openapi.yaml promises (a
    // newer or older backend). Shown as a server error.
    throw const ApiException(0, 'unreadable_response');
  }
}
