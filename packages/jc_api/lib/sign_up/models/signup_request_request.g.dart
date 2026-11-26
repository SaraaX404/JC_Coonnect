// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequest$Request _$SignupRequest$RequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'member_type',
      'first_name',
      'last_name',
      'phone',
      'password',
    ],
    disallowNullValues: const [
      'student_profile',
      'staff_profile',
      'alumni_profile',
      'member_type',
      'first_name',
      'last_name',
      'phone',
      'password',
      'address_line1',
      'accept_terms',
      'news_opt_in',
      'enrollment',
      'guardians',
      'children',
    ],
  );
  return SignupRequest$Request(
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
    memberType: SignupRequest$Request._read_memberType(json['member_type']),
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    phone: json['phone'] as String,
    password: json['password'] as String,
    birthday: json['birthday'] as String?,
    addressLine1:
        SignupRequest$Request._presentValue(json, 'address_line1') == null
        ? ""
        : SignupRequest$Request._read_addressLine1(
            SignupRequest$Request._presentValue(json, 'address_line1')
                as Object,
          ),
    acceptTerms:
        SignupRequest$Request._presentValue(json, 'accept_terms') == null
        ? false
        : SignupRequest$Request._read_acceptTerms(
            SignupRequest$Request._presentValue(json, 'accept_terms') as Object,
          ),
    newsOptIn: SignupRequest$Request._presentValue(json, 'news_opt_in') == null
        ? false
        : SignupRequest$Request._read_newsOptIn(
            SignupRequest$Request._presentValue(json, 'news_opt_in') as Object,
          ),
    enrollment: json['enrollment'] == null
        ? null
        : EnrollmentInputRequest.fromJson(
            json['enrollment'] as Map<String, dynamic>,
          ),
    guardians: (json['guardians'] as List<dynamic>?)
        ?.map((e) => GuardianContactRequest.fromJson(e as Map<String, dynamic>))
        .toList(),
    children: (json['children'] as List<dynamic>?)
        ?.map((e) => ChildRequest.fromJson(e as Map<String, dynamic>))
        .toList(),
    additionalProperties:
        SignupRequest$Request._extras(json, 'additionalProperties') == null
        ? const {}
        : SignupRequest$Request._readExtras(
            SignupRequest$Request._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SignupRequest$RequestToJson(
  SignupRequest$Request instance,
) => <String, dynamic>{
  'student_profile': ?instance.studentProfile?.toJson(),
  'staff_profile': ?instance.staffProfile?.toJson(),
  'alumni_profile': ?instance.alumniProfile?.toJson(),
  'member_type': ?SignupRequest$Request._write_memberType(instance.memberType),
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'password': instance.password,
  'birthday': ?instance.birthday,
  'address_line1': ?SignupRequest$Request._write_addressLine1(
    instance.addressLine1,
  ),
  'accept_terms': ?SignupRequest$Request._write_acceptTerms(
    instance.acceptTerms,
  ),
  'news_opt_in': ?SignupRequest$Request._write_newsOptIn(instance.newsOptIn),
  'enrollment': ?instance.enrollment?.toJson(),
  'guardians': ?instance.guardians?.map((e) => e.toJson()).toList(),
  'children': ?instance.children?.map((e) => e.toJson()).toList(),
};
