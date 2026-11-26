import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/l10n/l10n.dart';

/// From `--dart-define-from-file=env/<env>.json`.
const apiOrigin = String.fromEnvironment('API_ORIGIN');

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
