// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthEnvelope _$HealthEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return HealthEnvelope(
    data: Health.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        HealthEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : HealthEnvelope._readExtras(
            HealthEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$HealthEnvelopeToJson(HealthEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
