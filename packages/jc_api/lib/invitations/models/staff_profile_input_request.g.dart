// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_profile_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaffProfileInputRequest _$StaffProfileInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['staff_number'],
    disallowNullValues: const [
      'staff_number',
      'job_title',
      'is_teacher',
      'is_coach',
      'subject_ids',
      'grade_ids',
      'sport_ids',
      'age_groups',
    ],
  );
  return StaffProfileInputRequest(
    staffNumber: json['staff_number'] as String,
    schoolEmail: !json.containsKey('school_email')
        ? null
        : StaffProfileInputRequest._read_schoolEmail(json['school_email']),
    jobTitle: json['job_title'] as String?,
    departmentId: json['department_id'] as String?,
    isTeacher: json['is_teacher'] as bool?,
    isCoach: json['is_coach'] as bool?,
    subjectIds: (json['subject_ids'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    gradeIds: (json['grade_ids'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    formClassId: json['form_class_id'] as String?,
    sportIds: (json['sport_ids'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    ageGroups: StaffProfileInputRequest._read_ageGroups(json['age_groups']),
    coachingRole: !json.containsKey('coaching_role')
        ? null
        : StaffProfileInputRequest._read_coachingRole(json['coaching_role']),
    additionalProperties:
        StaffProfileInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : StaffProfileInputRequest._readExtras(
            StaffProfileInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StaffProfileInputRequestToJson(
  StaffProfileInputRequest instance,
) => <String, dynamic>{
  'staff_number': instance.staffNumber,
  if (instance.schoolEmail case final $value?)
    'school_email': StaffProfileInputRequest._write_schoolEmail($value),
  'job_title': ?instance.jobTitle,
  'department_id': ?instance.departmentId,
  'is_teacher': ?instance.isTeacher,
  'is_coach': ?instance.isCoach,
  'subject_ids': ?instance.subjectIds,
  'grade_ids': ?instance.gradeIds,
  'form_class_id': ?instance.formClassId,
  'sport_ids': ?instance.sportIds,
  'age_groups': ?StaffProfileInputRequest._write_ageGroups(instance.ageGroups),
  if (instance.coachingRole case final $value?)
    'coaching_role': StaffProfileInputRequest._write_coachingRole($value),
};
