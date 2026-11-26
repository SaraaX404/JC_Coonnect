// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnrollmentInputRequest _$EnrollmentInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['class_id'],
    disallowNullValues: const ['class_id'],
  );
  return EnrollmentInputRequest(
    classId: json['class_id'] as String,
    academicTrackId: json['academic_track_id'] as String?,
    additionalProperties:
        EnrollmentInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : EnrollmentInputRequest._readExtras(
            EnrollmentInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EnrollmentInputRequestToJson(
  EnrollmentInputRequest instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'academic_track_id': ?instance.academicTrackId,
};
