// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetupSteps _$SetupStepsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'academic_years',
      'grades',
      'academic_tracks',
      'classes',
      'houses',
    ],
    disallowNullValues: const [
      'academic_years',
      'grades',
      'academic_tracks',
      'classes',
      'houses',
    ],
  );
  return SetupSteps(
    academicYears: json['academic_years'] as bool,
    grades: json['grades'] as bool,
    academicTracks: json['academic_tracks'] as bool,
    classes: json['classes'] as bool,
    houses: json['houses'] as bool,
    additionalProperties:
        SetupSteps._extras(json, 'additionalProperties') == null
        ? const {}
        : SetupSteps._readExtras(
            SetupSteps._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SetupStepsToJson(SetupSteps instance) =>
    <String, dynamic>{
      'academic_years': instance.academicYears,
      'grades': instance.grades,
      'academic_tracks': instance.academicTracks,
      'classes': instance.classes,
      'houses': instance.houses,
    };
