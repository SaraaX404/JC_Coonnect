// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_profile_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlumniProfileInputRequest _$AlumniProfileInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['graduation_year'],
    disallowNullValues: const [
      'graduation_year',
      'last_grade_completed',
      'former_student_number',
      'current_occupation',
      'organisation',
      'industry',
      'city',
      'country',
      'leadership_roles',
      'giving_back',
      'group_ids',
    ],
  );
  return AlumniProfileInputRequest(
    graduationYear: AlumniProfileInputRequest._read_graduationYear(
      json['graduation_year'],
    ),
    lastGradeCompleted: json['last_grade_completed'] as String?,
    houseId: json['house_id'] as String?,
    formerStudentNumber: json['former_student_number'] as String?,
    chapterId: json['chapter_id'] as String?,
    currentOccupation: json['current_occupation'] as String?,
    organisation: json['organisation'] as String?,
    industry: json['industry'] as String?,
    city: json['city'] as String?,
    country: json['country'] as String?,
    linkedinUrl: !json.containsKey('linkedin_url')
        ? null
        : AlumniProfileInputRequest._read_linkedinUrl(json['linkedin_url']),
    leadershipRoles: AlumniProfileInputRequest._read_leadershipRoles(
      json['leadership_roles'],
    ),
    givingBack: AlumniProfileInputRequest._read_givingBack(json['giving_back']),
    givingHours: AlumniProfileInputRequest._read_givingHours(
      json['giving_hours'],
    ),
    groupIds: (json['group_ids'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    additionalProperties:
        AlumniProfileInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : AlumniProfileInputRequest._readExtras(
            AlumniProfileInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AlumniProfileInputRequestToJson(
  AlumniProfileInputRequest instance,
) => <String, dynamic>{
  'graduation_year': ?AlumniProfileInputRequest._write_graduationYear(
    instance.graduationYear,
  ),
  'last_grade_completed': ?instance.lastGradeCompleted,
  'house_id': ?instance.houseId,
  'former_student_number': ?instance.formerStudentNumber,
  'chapter_id': ?instance.chapterId,
  'current_occupation': ?instance.currentOccupation,
  'organisation': ?instance.organisation,
  'industry': ?instance.industry,
  'city': ?instance.city,
  'country': ?instance.country,
  if (instance.linkedinUrl case final $value?)
    'linkedin_url': AlumniProfileInputRequest._write_linkedinUrl($value),
  'leadership_roles': ?AlumniProfileInputRequest._write_leadershipRoles(
    instance.leadershipRoles,
  ),
  'giving_back': ?AlumniProfileInputRequest._write_givingBack(
    instance.givingBack,
  ),
  'giving_hours': ?AlumniProfileInputRequest._write_givingHours(
    instance.givingHours,
  ),
  'group_ids': ?instance.groupIds,
};
