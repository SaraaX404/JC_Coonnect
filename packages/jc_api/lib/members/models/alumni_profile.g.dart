// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlumniProfile _$AlumniProfileFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'graduation_year',
      'last_grade_completed',
      'former_student_number',
      'current_occupation',
      'organisation',
      'industry',
      'city',
      'country',
      'linkedin_url',
      'leadership_roles',
      'giving_back',
      'giving_hours',
      'house',
      'chapter',
      'groups',
      'graduation_record_found',
    ],
    disallowNullValues: const [
      'graduation_year',
      'last_grade_completed',
      'former_student_number',
      'current_occupation',
      'organisation',
      'industry',
      'city',
      'country',
      'linkedin_url',
      'leadership_roles',
      'giving_back',
      'groups',
      'graduation_record_found',
    ],
  );
  return AlumniProfile(
    graduationYear: AlumniProfile._read_graduationYear(json['graduation_year']),
    lastGradeCompleted: json['last_grade_completed'] as String,
    formerStudentNumber: json['former_student_number'] as String,
    currentOccupation: json['current_occupation'] as String,
    organisation: json['organisation'] as String,
    industry: json['industry'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    linkedinUrl: json['linkedin_url'] as String,
    leadershipRoles: AlumniProfile._read_leadershipRoles(
      json['leadership_roles'],
    ),
    givingBack: AlumniProfile._read_givingBack(json['giving_back']),
    givingHours: AlumniProfile._read_givingHours(json['giving_hours']),
    house: json['house'] == null
        ? null
        : Ref.fromJson(json['house'] as Map<String, dynamic>),
    chapter: json['chapter'] == null
        ? null
        : Ref.fromJson(json['chapter'] as Map<String, dynamic>),
    groups: (json['groups'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    graduationRecordFound: json['graduation_record_found'] as bool,
    additionalProperties:
        AlumniProfile._extras(json, 'additionalProperties') == null
        ? const {}
        : AlumniProfile._readExtras(
            AlumniProfile._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AlumniProfileToJson(AlumniProfile instance) =>
    <String, dynamic>{
      'graduation_year': ?AlumniProfile._write_graduationYear(
        instance.graduationYear,
      ),
      'last_grade_completed': instance.lastGradeCompleted,
      'former_student_number': instance.formerStudentNumber,
      'current_occupation': instance.currentOccupation,
      'organisation': instance.organisation,
      'industry': instance.industry,
      'city': instance.city,
      'country': instance.country,
      'linkedin_url': instance.linkedinUrl,
      'leadership_roles': ?AlumniProfile._write_leadershipRoles(
        instance.leadershipRoles,
      ),
      'giving_back': ?AlumniProfile._write_givingBack(instance.givingBack),
      'giving_hours': AlumniProfile._write_givingHours(instance.givingHours),
      'house': instance.house?.toJson(),
      'chapter': instance.chapter?.toJson(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'graduation_record_found': instance.graduationRecordFound,
    };
