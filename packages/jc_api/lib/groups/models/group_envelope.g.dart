// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupEnvelope _$GroupEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return GroupEnvelope(
    data: Group.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        GroupEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : GroupEnvelope._readExtras(
            GroupEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GroupEnvelopeToJson(GroupEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
