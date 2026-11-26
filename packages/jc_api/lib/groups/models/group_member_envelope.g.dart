// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMemberEnvelope _$GroupMemberEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return GroupMemberEnvelope(
    data: GroupMember.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        GroupMemberEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : GroupMemberEnvelope._readExtras(
            GroupMemberEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GroupMemberEnvelopeToJson(
  GroupMemberEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
