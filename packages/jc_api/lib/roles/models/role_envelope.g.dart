// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleEnvelope _$RoleEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return RoleEnvelope(
    data: Role.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        RoleEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : RoleEnvelope._readExtras(
            RoleEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RoleEnvelopeToJson(RoleEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
