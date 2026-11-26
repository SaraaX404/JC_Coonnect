// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuardianEnvelope _$GuardianEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return GuardianEnvelope(
    data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        GuardianEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : GuardianEnvelope._readExtras(
            GuardianEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GuardianEnvelopeToJson(GuardianEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
