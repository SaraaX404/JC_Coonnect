// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_checks_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemChecksEnvelope _$SystemChecksEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return SystemChecksEnvelope(
    data: SystemChecks.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        SystemChecksEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : SystemChecksEnvelope._readExtras(
            SystemChecksEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SystemChecksEnvelopeToJson(
  SystemChecksEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
