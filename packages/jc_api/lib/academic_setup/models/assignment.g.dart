// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assignment _$AssignmentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'school_class', 'subject', 'teacher', 'room'],
    disallowNullValues: const [
      'id',
      'school_class',
      'subject',
      'teacher',
      'room',
    ],
  );
  return Assignment(
    id: json['id'] as String,
    schoolClass: Ref.fromJson(json['school_class'] as Map<String, dynamic>),
    subject: Ref.fromJson(json['subject'] as Map<String, dynamic>),
    teacher: MemberRef.fromJson(json['teacher'] as Map<String, dynamic>),
    room: json['room'] as String,
    additionalProperties:
        Assignment._extras(json, 'additionalProperties') == null
        ? const {}
        : Assignment._readExtras(
            Assignment._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AssignmentToJson(Assignment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_class': instance.schoolClass.toJson(),
      'subject': instance.subject.toJson(),
      'teacher': instance.teacher.toJson(),
      'room': instance.room,
    };
