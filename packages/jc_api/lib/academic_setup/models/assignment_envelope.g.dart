// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignmentEnvelope _$AssignmentEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return AssignmentEnvelope(
    data: Assignment.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        AssignmentEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : AssignmentEnvelope._readExtras(
            AssignmentEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AssignmentEnvelopeToJson(AssignmentEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
