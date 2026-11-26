// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassInputRequest _$ClassInputRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['academic_year_id', 'grade_id', 'name'],
    disallowNullValues: const ['academic_year_id', 'grade_id', 'name', 'room'],
  );
  return ClassInputRequest(
    academicYearId: json['academic_year_id'] as String,
    gradeId: json['grade_id'] as String,
    academicTrackId: json['academic_track_id'] as String?,
    name: json['name'] as String,
    capacity: ClassInputRequest._read_capacity(json['capacity']),
    room: json['room'] as String?,
    formTeacherId: json['form_teacher_id'] as String?,
    additionalProperties:
        ClassInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : ClassInputRequest._readExtras(
            ClassInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ClassInputRequestToJson(ClassInputRequest instance) =>
    <String, dynamic>{
      'academic_year_id': instance.academicYearId,
      'grade_id': instance.gradeId,
      'academic_track_id': ?instance.academicTrackId,
      'name': instance.name,
      'capacity': ?ClassInputRequest._write_capacity(instance.capacity),
      'room': ?instance.room,
      'form_teacher_id': ?instance.formTeacherId,
    };
