// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_check_result_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentCheckResultEnvelope _$StudentCheckResultEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return StudentCheckResultEnvelope(
    data: StudentCheckResult.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        StudentCheckResultEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : StudentCheckResultEnvelope._readExtras(
            StudentCheckResultEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StudentCheckResultEnvelopeToJson(
  StudentCheckResultEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
