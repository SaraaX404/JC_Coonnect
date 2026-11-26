// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectEnvelope _$SubjectEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return SubjectEnvelope(
    data: Subject.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        SubjectEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : SubjectEnvelope._readExtras(
            SubjectEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SubjectEnvelopeToJson(SubjectEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
