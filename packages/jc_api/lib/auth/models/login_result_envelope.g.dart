// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResultEnvelope _$LoginResultEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return LoginResultEnvelope(
    data: LoginResult.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        LoginResultEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : LoginResultEnvelope._readExtras(
            LoginResultEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$LoginResultEnvelopeToJson(
  LoginResultEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
