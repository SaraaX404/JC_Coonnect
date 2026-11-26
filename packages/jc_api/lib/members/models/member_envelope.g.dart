// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberEnvelope _$MemberEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return MemberEnvelope(
    data: Member.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        MemberEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberEnvelope._readExtras(
            MemberEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberEnvelopeToJson(MemberEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
