// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resubmit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResubmitRequest _$ResubmitRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['token'],
    disallowNullValues: const [
      'token',
      'student_profile',
      'staff_profile',
      'alumni_profile',
      'first_name',
      'last_name',
    ],
  );
  return ResubmitRequest(
    token: json['token'] as String,
    studentProfile: json['student_profile'] == null
        ? null
        : StudentProfileInputRequest.fromJson(
            json['student_profile'] as Map<String, dynamic>,
          ),
    staffProfile: json['staff_profile'] == null
        ? null
        : StaffProfileInputRequest.fromJson(
            json['staff_profile'] as Map<String, dynamic>,
          ),
    alumniProfile: json['alumni_profile'] == null
        ? null
        : AlumniProfileInputRequest.fromJson(
            json['alumni_profile'] as Map<String, dynamic>,
          ),
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    additionalProperties:
        ResubmitRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : ResubmitRequest._readExtras(
            ResubmitRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ResubmitRequestToJson(ResubmitRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'student_profile': ?instance.studentProfile?.toJson(),
      'staff_profile': ?instance.staffProfile?.toJson(),
      'alumni_profile': ?instance.alumniProfile?.toJson(),
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
    };
