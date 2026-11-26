// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaffProfile _$StaffProfileFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'staff_number',
      'school_email',
      'job_title',
      'department',
      'is_teacher',
      'is_coach',
      'subjects',
      'grades',
      'form_class',
      'sports',
      'age_groups',
      'coaching_role',
    ],
    disallowNullValues: const [
      'staff_number',
      'school_email',
      'job_title',
      'is_teacher',
      'is_coach',
      'subjects',
      'grades',
      'sports',
      'age_groups',
      'coaching_role',
    ],
  );
  return StaffProfile(
    staffNumber: json['staff_number'] as String,
    schoolEmail: json['school_email'] as String,
    jobTitle: json['job_title'] as String,
    department: json['department'] == null
        ? null
        : Ref.fromJson(json['department'] as Map<String, dynamic>),
    isTeacher: json['is_teacher'] as bool,
    isCoach: json['is_coach'] as bool,
    subjects: (json['subjects'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    grades: (json['grades'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    formClass: json['form_class'] == null
        ? null
        : Ref.fromJson(json['form_class'] as Map<String, dynamic>),
    sports: (json['sports'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    ageGroups: StaffProfile._read_ageGroups(json['age_groups']),
    coachingRole: StaffProfile._read_coachingRole(json['coaching_role']),
    additionalProperties:
        StaffProfile._extras(json, 'additionalProperties') == null
        ? const {}
        : StaffProfile._readExtras(
            StaffProfile._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StaffProfileToJson(StaffProfile instance) =>
    <String, dynamic>{
      'staff_number': instance.staffNumber,
      'school_email': instance.schoolEmail,
      'job_title': instance.jobTitle,
      'department': instance.department?.toJson(),
      'is_teacher': instance.isTeacher,
      'is_coach': instance.isCoach,
      'subjects': instance.subjects.map((e) => e.toJson()).toList(),
      'grades': instance.grades.map((e) => e.toJson()).toList(),
      'form_class': instance.formClass?.toJson(),
      'sports': instance.sports.map((e) => e.toJson()).toList(),
      'age_groups': ?StaffProfile._write_ageGroups(instance.ageGroups),
      'coaching_role': ?StaffProfile._write_coachingRole(instance.coachingRole),
    };
