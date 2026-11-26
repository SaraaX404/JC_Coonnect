// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_detail_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberDetailEnvelope _$MemberDetailEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return MemberDetailEnvelope(
    data: MemberDetail.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        MemberDetailEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberDetailEnvelope._readExtras(
            MemberDetailEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberDetailEnvelopeToJson(
  MemberDetailEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
