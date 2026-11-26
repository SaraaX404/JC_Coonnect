// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentProfile _$StudentProfileFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['student_number', 'house', 'enrollment'],
    disallowNullValues: const ['student_number'],
  );
  return StudentProfile(
    studentNumber: json['student_number'] as String,
    house: json['house'] == null
        ? null
        : Ref.fromJson(json['house'] as Map<String, dynamic>),
    enrollment: json['enrollment'] == null
        ? null
        : Enrollment.fromJson(json['enrollment'] as Map<String, dynamic>),
    additionalProperties:
        StudentProfile._extras(json, 'additionalProperties') == null
        ? const {}
        : StudentProfile._readExtras(
            StudentProfile._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StudentProfileToJson(StudentProfile instance) =>
    <String, dynamic>{
      'student_number': instance.studentNumber,
      'house': instance.house?.toJson(),
      'enrollment': instance.enrollment?.toJson(),
    };
