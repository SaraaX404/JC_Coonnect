// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_pair_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenPairEnvelope _$TokenPairEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return TokenPairEnvelope(
    data: TokenPair.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        TokenPairEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : TokenPairEnvelope._readExtras(
            TokenPairEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$TokenPairEnvelopeToJson(TokenPairEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
