// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_counts_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberCountsEnvelope _$MemberCountsEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return MemberCountsEnvelope(
    data: MemberCounts.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        MemberCountsEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberCountsEnvelope._readExtras(
            MemberCountsEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberCountsEnvelopeToJson(
  MemberCountsEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
