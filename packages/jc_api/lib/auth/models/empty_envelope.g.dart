// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empty_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmptyEnvelope _$EmptyEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['data']);
  return EmptyEnvelope(
    data: json['data'],
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        EmptyEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : EmptyEnvelope._readExtras(
            EmptyEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EmptyEnvelopeToJson(EmptyEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
