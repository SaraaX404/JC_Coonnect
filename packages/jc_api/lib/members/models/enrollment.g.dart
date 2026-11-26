// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Enrollment _$EnrollmentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'academic_year',
      'school_class',
      'grade',
      'academic_track',
      'enrolled_on',
    ],
    disallowNullValues: const [
      'academic_year',
      'school_class',
      'grade',
      'enrolled_on',
    ],
  );
  return Enrollment(
    academicYear: Ref.fromJson(json['academic_year'] as Map<String, dynamic>),
    schoolClass: Ref.fromJson(json['school_class'] as Map<String, dynamic>),
    grade: Ref.fromJson(json['grade'] as Map<String, dynamic>),
    academicTrack: json['academic_track'] == null
        ? null
        : Ref.fromJson(json['academic_track'] as Map<String, dynamic>),
    enrolledOn: json['enrolled_on'] as String,
    additionalProperties:
        Enrollment._extras(json, 'additionalProperties') == null
        ? const {}
        : Enrollment._readExtras(
            Enrollment._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EnrollmentToJson(Enrollment instance) =>
    <String, dynamic>{
      'academic_year': instance.academicYear.toJson(),
      'school_class': instance.schoolClass.toJson(),
      'grade': instance.grade.toJson(),
      'academic_track': instance.academicTrack?.toJson(),
      'enrolled_on': instance.enrolledOn,
    };
