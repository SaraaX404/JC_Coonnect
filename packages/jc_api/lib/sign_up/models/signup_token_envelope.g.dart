// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_token_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupTokenEnvelope _$SignupTokenEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return SignupTokenEnvelope(
    data: SignupToken.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        SignupTokenEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : SignupTokenEnvelope._readExtras(
            SignupTokenEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SignupTokenEnvelopeToJson(
  SignupTokenEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
