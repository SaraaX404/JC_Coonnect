// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitationCreateRequest _$InvitationCreateRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['email', 'full_name', 'member_type'],
    disallowNullValues: const ['email', 'full_name', 'member_type'],
  );
  return InvitationCreateRequest(
    email: json['email'] as String,
    fullName: json['full_name'] as String,
    memberType: InvitationCreateRequest._read_memberType(json['member_type']),
    additionalProperties:
        InvitationCreateRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : InvitationCreateRequest._readExtras(
            InvitationCreateRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$InvitationCreateRequestToJson(
  InvitationCreateRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'full_name': instance.fullName,
  'member_type': ?InvitationCreateRequest._write_memberType(
    instance.memberType,
  ),
};
