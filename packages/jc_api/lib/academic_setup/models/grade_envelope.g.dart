// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GradeEnvelope _$GradeEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return GradeEnvelope(
    data: Grade.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        GradeEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : GradeEnvelope._readExtras(
            GradeEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GradeEnvelopeToJson(GradeEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
