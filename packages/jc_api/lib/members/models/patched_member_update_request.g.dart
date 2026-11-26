// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_member_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedMemberUpdateRequest _$PatchedMemberUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'student_profile',
      'staff_profile',
      'alumni_profile',
      'first_name',
      'last_name',
      'email',
      'address_line1',
      'address_line2',
      'city',
      'district',
      'enrollment',
    ],
  );
  return PatchedMemberUpdateRequest(
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
    email: json['email'] as String?,
    birthday: json['birthday'] as String?,
    addressLine1: json['address_line1'] as String?,
    addressLine2: json['address_line2'] as String?,
    city: json['city'] as String?,
    district: json['district'] as String?,
    enrollment: json['enrollment'] == null
        ? null
        : EnrollmentInputRequest.fromJson(
            json['enrollment'] as Map<String, dynamic>,
          ),
    additionalProperties:
        PatchedMemberUpdateRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedMemberUpdateRequest._readExtras(
            PatchedMemberUpdateRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedMemberUpdateRequestToJson(
  PatchedMemberUpdateRequest instance,
) => <String, dynamic>{
  'student_profile': ?instance.studentProfile?.toJson(),
  'staff_profile': ?instance.staffProfile?.toJson(),
  'alumni_profile': ?instance.alumniProfile?.toJson(),
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'email': ?instance.email,
  'birthday': ?instance.birthday,
  'address_line1': ?instance.addressLine1,
  'address_line2': ?instance.addressLine2,
  'city': ?instance.city,
  'district': ?instance.district,
  'enrollment': ?instance.enrollment?.toJson(),
};
