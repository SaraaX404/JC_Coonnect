// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationEnvelope _$ApplicationEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return ApplicationEnvelope(
    data: Application.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        ApplicationEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : ApplicationEnvelope._readExtras(
            ApplicationEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ApplicationEnvelopeToJson(
  ApplicationEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
