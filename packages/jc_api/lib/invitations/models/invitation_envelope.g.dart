// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitationEnvelope _$InvitationEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return InvitationEnvelope(
    data: Invitation.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        InvitationEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : InvitationEnvelope._readExtras(
            InvitationEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$InvitationEnvelopeToJson(InvitationEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
