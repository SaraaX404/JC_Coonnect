// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignmentInputRequest _$AssignmentInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['class_id', 'subject_id', 'teacher_id'],
    disallowNullValues: const ['class_id', 'subject_id', 'teacher_id', 'room'],
  );
  return AssignmentInputRequest(
    classId: json['class_id'] as String,
    subjectId: json['subject_id'] as String,
    teacherId: json['teacher_id'] as String,
    room: json['room'] as String?,
    additionalProperties:
        AssignmentInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : AssignmentInputRequest._readExtras(
            AssignmentInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AssignmentInputRequestToJson(
  AssignmentInputRequest instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'subject_id': instance.subjectId,
  'teacher_id': instance.teacherId,
  'room': ?instance.room,
};
