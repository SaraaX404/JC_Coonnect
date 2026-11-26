// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'academic_year',
      'grade',
      'academic_track',
      'capacity',
      'room',
      'form_teacher',
      'student_count',
      'archived_at',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'academic_year',
      'grade',
      'room',
      'student_count',
    ],
  );
  return Class(
    id: json['id'] as String,
    name: json['name'] as String,
    academicYear: Ref.fromJson(json['academic_year'] as Map<String, dynamic>),
    grade: Ref.fromJson(json['grade'] as Map<String, dynamic>),
    academicTrack: json['academic_track'] == null
        ? null
        : Ref.fromJson(json['academic_track'] as Map<String, dynamic>),
    capacity: Class._read_capacity(json['capacity']),
    room: json['room'] as String,
    formTeacher: json['form_teacher'] == null
        ? null
        : MemberRef.fromJson(json['form_teacher'] as Map<String, dynamic>),
    studentCount: Class._read_studentCount(json['student_count']),
    archivedAt: Class._read_archivedAt(json['archived_at']),
    additionalProperties: Class._extras(json, 'additionalProperties') == null
        ? const {}
        : Class._readExtras(Class._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'academic_year': instance.academicYear.toJson(),
  'grade': instance.grade.toJson(),
  'academic_track': instance.academicTrack?.toJson(),
  'capacity': Class._write_capacity(instance.capacity),
  'room': instance.room,
  'form_teacher': instance.formTeacher?.toJson(),
  'student_count': ?Class._write_studentCount(instance.studentCount),
  'archived_at': Class._write_archivedAt(instance.archivedAt),
};
