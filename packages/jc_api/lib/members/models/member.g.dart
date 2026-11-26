// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Member _$MemberFromJson(Map<String, dynamic> json) {
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
    ],
  );
  return Member(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    memberType: Member._read_memberType(json['member_type']),
    status: Member._read_status(json['status']),
    verifiedAt: Member._read_verifiedAt(json['verified_at']),
    joinedAt: Member._read_joinedAt(json['joined_at']),
    roles: (json['roles'] as List<dynamic>)
        .map((e) => RoleRef.fromJson(e as Map<String, dynamic>))
        .toList(),
    clubs: (json['clubs'] as List<dynamic>)
        .map((e) => Ref.fromJson(e as Map<String, dynamic>))
        .toList(),
    additionalProperties: Member._extras(json, 'additionalProperties') == null
        ? const {}
        : Member._readExtras(Member._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$MemberToJson(Member instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'email': instance.email,
  'member_type': ?Member._write_memberType(instance.memberType),
  'status': ?Member._write_status(instance.status),
  'verified_at': Member._write_verifiedAt(instance.verifiedAt),
  'joined_at': ?Member._write_joinedAt(instance.joinedAt),
  'roles': instance.roles.map((e) => e.toJson()).toList(),
  'clubs': instance.clubs.map((e) => e.toJson()).toList(),
};
