// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChildRequest _$ChildRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['full_name', 'student_number', 'relationship'],
    disallowNullValues: const ['full_name', 'student_number', 'relationship'],
  );
  return ChildRequest(
    fullName: json['full_name'] as String,
    studentNumber: json['student_number'] as String,
    relationship: json['relationship'] as String,
    additionalProperties:
        ChildRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : ChildRequest._readExtras(
            ChildRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ChildRequestToJson(ChildRequest instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'student_number': instance.studentNumber,
      'relationship': instance.relationship,
    };
