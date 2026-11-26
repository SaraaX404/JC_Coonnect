// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invitation _$InvitationFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'email',
      'full_name',
      'member_type',
      'status',
      'invited_by',
      'expires_at',
      'accepted_at',
      'created_at',
    ],
    disallowNullValues: const [
      'id',
      'email',
      'full_name',
      'member_type',
      'status',
      'invited_by',
      'expires_at',
      'created_at',
    ],
  );
  return Invitation(
    id: json['id'] as String,
    email: json['email'] as String,
    fullName: json['full_name'] as String,
    memberType: Invitation._read_memberType(json['member_type']),
    status: Invitation._read_status(json['status']),
    invitedBy: MemberRef.fromJson(json['invited_by'] as Map<String, dynamic>),
    expiresAt: Invitation._read_expiresAt(json['expires_at']),
    acceptedAt: Invitation._read_acceptedAt(json['accepted_at']),
    createdAt: Invitation._read_createdAt(json['created_at']),
    additionalProperties:
        Invitation._extras(json, 'additionalProperties') == null
        ? const {}
        : Invitation._readExtras(
            Invitation._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$InvitationToJson(Invitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'full_name': instance.fullName,
      'member_type': ?Invitation._write_memberType(instance.memberType),
      'status': ?Invitation._write_status(instance.status),
      'invited_by': instance.invitedBy.toJson(),
      'expires_at': ?Invitation._write_expiresAt(instance.expiresAt),
      'accepted_at': Invitation._write_acceptedAt(instance.acceptedAt),
      'created_at': ?Invitation._write_createdAt(instance.createdAt),
    };
