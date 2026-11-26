// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_class_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedClassInputRequest _$PatchedClassInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    disallowNullValues: const ['academic_year_id', 'grade_id', 'name', 'room'],
  );
  return PatchedClassInputRequest(
    academicYearId: json['academic_year_id'] as String?,
    gradeId: json['grade_id'] as String?,
    academicTrackId: json['academic_track_id'] as String?,
    name: json['name'] as String?,
    capacity: PatchedClassInputRequest._read_capacity(json['capacity']),
    room: json['room'] as String?,
    formTeacherId: json['form_teacher_id'] as String?,
    additionalProperties:
        PatchedClassInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedClassInputRequest._readExtras(
            PatchedClassInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedClassInputRequestToJson(
  PatchedClassInputRequest instance,
) => <String, dynamic>{
  'academic_year_id': ?instance.academicYearId,
  'grade_id': ?instance.gradeId,
  'academic_track_id': ?instance.academicTrackId,
  'name': ?instance.name,
  'capacity': ?PatchedClassInputRequest._write_capacity(instance.capacity),
  'room': ?instance.room,
  'form_teacher_id': ?instance.formTeacherId,
};
