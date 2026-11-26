// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassEnvelope _$ClassEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return ClassEnvelope(
    data: Class.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        ClassEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : ClassEnvelope._readExtras(
            ClassEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ClassEnvelopeToJson(ClassEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
