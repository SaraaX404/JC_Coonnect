// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberDetail _$MemberDetailFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'first_name',
      'last_name',
      'phone',
      'email',
      'member_type',
      'status',
      'verified_at',
      'joined_at',
      'roles',
      'clubs',
      'birthday',
      'address_line1',
      'address_line2',
      'city',
      'district',
      'email_verified_at',
      'news_opt_in',
      'student_profile',
      'staff_profile',
      'alumni_profile',
    ],
    disallowNullValues: const [
      'id',
      'first_name',
      'last_name',
      'phone',
      'email',
      'member_type',
      'status',
      'joined_at',
      'roles',
      'clubs',
      'birthday',
      'address_line1',
      'address_line2',
      'city',
      'district',
      'email_verified_at',
      'news_opt_in',
    ],
  );
  return MemberDetail(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    memberType: MemberDetail._read_memberType(json['member_type']),
    status: MemberDetail._read_status(json['status']),
    verifiedAt: MemberDetail._read_verifiedAt(json['verified_at']),
    joinedAt: MemberDetail._read_joinedAt(json['joined_at']),
    roles: (json['roles'] as List<dynamic>)
        .map((e) => RoleRef.fromJson(e as Map<String, dynamic>))
        .toList(),
    clubs: (json['clubs'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    birthday: json['birthday'] as String,
    addressLine1: json['address_line1'] as String,
    addressLine2: json['address_line2'] as String,
    city: json['city'] as String,
    district: json['district'] as String,
    emailVerifiedAt: MemberDetail._read_emailVerifiedAt(
      json['email_verified_at'],
    ),
    newsOptIn: json['news_opt_in'] as bool,
    studentProfile: json['student_profile'] == null
        ? null
        : StudentProfile.fromJson(
            json['student_profile'] as Map<String, dynamic>,
          ),
    staffProfile: json['staff_profile'] == null
        ? null
        : StaffProfile.fromJson(json['staff_profile'] as Map<String, dynamic>),
    alumniProfile: json['alumni_profile'] == null
        ? null
        : AlumniProfile.fromJson(
            json['alumni_profile'] as Map<String, dynamic>,
          ),
    additionalProperties:
        MemberDetail._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberDetail._readExtras(
            MemberDetail._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberDetailToJson(MemberDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'member_type': ?MemberDetail._write_memberType(instance.memberType),
      'status': ?MemberDetail._write_status(instance.status),
      'verified_at': MemberDetail._write_verifiedAt(instance.verifiedAt),
      'joined_at': ?MemberDetail._write_joinedAt(instance.joinedAt),
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'clubs': instance.clubs.map((e) => e.toJson()).toList(),
      'birthday': instance.birthday,
      'address_line1': instance.addressLine1,
      'address_line2': instance.addressLine2,
      'city': instance.city,
      'district': instance.district,
      'email_verified_at': ?MemberDetail._write_emailVerifiedAt(
        instance.emailVerifiedAt,
      ),
      'news_opt_in': instance.newsOptIn,
      'student_profile': instance.studentProfile?.toJson(),
      'staff_profile': instance.staffProfile?.toJson(),
      'alumni_profile': instance.alumniProfile?.toJson(),
    };
