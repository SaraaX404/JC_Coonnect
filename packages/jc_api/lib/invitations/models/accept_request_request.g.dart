// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_request_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptRequest$Request _$AcceptRequest$RequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'token',
      'phone',
      'password',
      'first_name',
      'last_name',
    ],
    disallowNullValues: const [
      'token',
      'student_profile',
      'staff_profile',
      'alumni_profile',
      'phone',
      'password',
      'first_name',
      'last_name',
      'accept_terms',
    ],
  );
  return AcceptRequest$Request(
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
    phone: json['phone'] as String,
    password: json['password'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    acceptTerms:
        AcceptRequest$Request._presentValue(json, 'accept_terms') == null
        ? false
        : AcceptRequest$Request._read_acceptTerms(
            AcceptRequest$Request._presentValue(json, 'accept_terms') as Object,
          ),
    additionalProperties:
        AcceptRequest$Request._extras(json, 'additionalProperties') == null
        ? const {}
        : AcceptRequest$Request._readExtras(
            AcceptRequest$Request._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AcceptRequest$RequestToJson(
  AcceptRequest$Request instance,
) => <String, dynamic>{
  'token': instance.token,
  'student_profile': ?instance.studentProfile?.toJson(),
  'staff_profile': ?instance.staffProfile?.toJson(),
  'alumni_profile': ?instance.alumniProfile?.toJson(),
  'phone': instance.phone,
  'password': instance.password,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'accept_terms': ?AcceptRequest$Request._write_acceptTerms(
    instance.acceptTerms,
  ),
};
