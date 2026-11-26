// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitationPreview _$InvitationPreviewFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'school_name',
      'email',
      'full_name',
      'member_type',
      'status',
      'member_status',
      'return_note',
      'terms_version',
    ],
    disallowNullValues: const [
      'school_name',
      'email',
      'full_name',
      'member_type',
      'status',
      'return_note',
    ],
  );
  return InvitationPreview(
    schoolName: json['school_name'] as String,
    email: json['email'] as String,
    fullName: json['full_name'] as String,
    memberType: InvitationPreview._read_memberType(json['member_type']),
    status: InvitationPreview._read_status(json['status']),
    memberStatus: InvitationPreview._read_memberStatus(json['member_status']),
    returnNote: json['return_note'] as String,
    termsVersion: json['terms_version'] as String?,
    additionalProperties:
        InvitationPreview._extras(json, 'additionalProperties') == null
        ? const {}
        : InvitationPreview._readExtras(
            InvitationPreview._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$InvitationPreviewToJson(
  InvitationPreview instance,
) => <String, dynamic>{
  'school_name': instance.schoolName,
  'email': instance.email,
  'full_name': instance.fullName,
  'member_type': ?InvitationPreview._write_memberType(instance.memberType),
  'status': ?InvitationPreview._write_status(instance.status),
  'member_status': InvitationPreview._write_memberStatus(instance.memberStatus),
  'return_note': instance.returnNote,
  'terms_version': instance.termsVersion,
};
