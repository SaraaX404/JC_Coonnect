// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_check_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentCheckRequest _$StudentCheckRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['student_number'],
    disallowNullValues: const ['student_number', 'full_name'],
  );
  return StudentCheckRequest(
    studentNumber: json['student_number'] as String,
    fullName: json['full_name'] as String?,
    additionalProperties:
        StudentCheckRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : StudentCheckRequest._readExtras(
            StudentCheckRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StudentCheckRequestToJson(
  StudentCheckRequest instance,
) => <String, dynamic>{
  'student_number': instance.studentNumber,
  'full_name': ?instance.fullName,
};
