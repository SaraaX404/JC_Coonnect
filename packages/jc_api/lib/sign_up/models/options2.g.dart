// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Options2 _$Options2FromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'school',
      'terms',
      'current_year',
      'grades',
      'classes',
      'academic_tracks',
      'houses',
      'subjects',
      'departments',
      'sports',
      'clubs',
      'choices',
    ],
    disallowNullValues: const [
      'school',
      'grades',
      'classes',
      'academic_tracks',
      'houses',
      'subjects',
      'departments',
      'sports',
      'clubs',
      'choices',
    ],
  );
  return Options2(
    school: SchoolInfo.fromJson(json['school'] as Map<String, dynamic>),
    terms: json['terms'] == null
        ? null
        : Terms.fromJson(json['terms'] as Map<String, dynamic>),
    currentYear: json['current_year'] == null
        ? null
        : Ref.fromJson(json['current_year'] as Map<String, dynamic>),
    grades: (json['grades'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    classes: (json['classes'] as List<dynamic>)
        .map((e) => ClassOption.fromJson(e as Map<String, dynamic>))
        .toList(),
    academicTracks: (json['academic_tracks'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    houses: (json['houses'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    subjects: (json['subjects'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    departments: (json['departments'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    sports: (json['sports'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    clubs: (json['clubs'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    choices: Choices.fromJson(json['choices'] as Map<String, dynamic>),
    additionalProperties: Options2._extras(json, 'additionalProperties') == null
        ? const {}
        : Options2._readExtras(Options2._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$Options2ToJson(Options2 instance) => <String, dynamic>{
  'school': instance.school.toJson(),
  'terms': instance.terms?.toJson(),
  'current_year': instance.currentYear?.toJson(),
  'grades': instance.grades.map((e) => e.toJson()).toList(),
  'classes': instance.classes.map((e) => e.toJson()).toList(),
  'academic_tracks': instance.academicTracks.map((e) => e.toJson()).toList(),
  'houses': instance.houses.map((e) => e.toJson()).toList(),
  'subjects': instance.subjects.map((e) => e.toJson()).toList(),
  'departments': instance.departments.map((e) => e.toJson()).toList(),
  'sports': instance.sports.map((e) => e.toJson()).toList(),
  'clubs': instance.clubs.map((e) => e.toJson()).toList(),
  'choices': instance.choices.toJson(),
};
