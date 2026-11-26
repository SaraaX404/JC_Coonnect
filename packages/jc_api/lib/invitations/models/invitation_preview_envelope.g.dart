// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_preview_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitationPreviewEnvelope _$InvitationPreviewEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return InvitationPreviewEnvelope(
    data: InvitationPreview.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        InvitationPreviewEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : InvitationPreviewEnvelope._readExtras(
            InvitationPreviewEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$InvitationPreviewEnvelopeToJson(
  InvitationPreviewEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
