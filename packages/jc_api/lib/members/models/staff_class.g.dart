// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaffClass _$StaffClassFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'grade',
      'academic_year',
      'room',
      'student_count',
      'is_form_teacher',
      'subjects',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'grade',
      'academic_year',
      'room',
      'student_count',
      'is_form_teacher',
      'subjects',
    ],
  );
  return StaffClass(
    id: json['id'] as String,
    name: json['name'] as String,
    grade: Ref.fromJson(json['grade'] as Map<String, dynamic>),
    academicYear: Ref.fromJson(json['academic_year'] as Map<String, dynamic>),
    room: json['room'] as String,
    studentCount: StaffClass._read_studentCount(json['student_count']),
    isFormTeacher: json['is_form_teacher'] as bool,
    subjects: (json['subjects'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    additionalProperties:
        StaffClass._extras(json, 'additionalProperties') == null
        ? const {}
        : StaffClass._readExtras(
            StaffClass._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StaffClassToJson(StaffClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'grade': instance.grade.toJson(),
      'academic_year': instance.academicYear.toJson(),
      'room': instance.room,
      'student_count': ?StaffClass._write_studentCount(instance.studentCount),
      'is_form_teacher': instance.isFormTeacher,
      'subjects': instance.subjects.map((e) => e.toJson()).toList(),
    };
