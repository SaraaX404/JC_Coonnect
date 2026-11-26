import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jc_connect_app/l10n/l10n.dart';

/// From `--dart-define-from-file=env/<env>.json`.
const apiBaseUrl = String.fromEnvironment('API_BASE_URL');

/// The backend checks `X-Client` against the token audience on every call.
final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      headers: {'X-Client': 'mobile'},
    ),
  ),
);

/// A failed API call. [status] is null when the server wasn't reached.
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

/// POSTs [body] and returns the envelope's `data` (empty for a 204); every
/// failure becomes an [ApiException].
Future<Map<String, Object?>> apiPost(
  Dio dio,
  String path,
  Map<String, Object?> body,
) async {
  try {
    final response = await dio.post<Map<String, Object?>>(path, data: body);
    return response.data?['data'] as Map<String, Object?>? ?? const {};
  } on DioException catch (e) {
    final status = e.response?.statusCode;
    final code = switch (e.response?.data) {
      {'error': {'code': final String code}} => code,
      _ => null,
    };
    throw ApiException(status, code);
  }
}
