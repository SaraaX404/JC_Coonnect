// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_check_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentCheckResult _$StudentCheckResultFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['match'],
    disallowNullValues: const ['match'],
  );
  return StudentCheckResult(
    match: json['match'] as bool,
    additionalProperties:
        StudentCheckResult._extras(json, 'additionalProperties') == null
        ? const {}
        : StudentCheckResult._readExtras(
            StudentCheckResult._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StudentCheckResultToJson(StudentCheckResult instance) =>
    <String, dynamic>{'match': instance.match};
