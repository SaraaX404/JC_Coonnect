// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentProfileInputRequest _$StudentProfileInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['student_number'],
    disallowNullValues: const ['student_number'],
  );
  return StudentProfileInputRequest(
    studentNumber: json['student_number'] as String,
    houseId: json['house_id'] as String?,
    additionalProperties:
        StudentProfileInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : StudentProfileInputRequest._readExtras(
            StudentProfileInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StudentProfileInputRequestToJson(
  StudentProfileInputRequest instance,
) => <String, dynamic>{
  'student_number': instance.studentNumber,
  'house_id': ?instance.houseId,
};
