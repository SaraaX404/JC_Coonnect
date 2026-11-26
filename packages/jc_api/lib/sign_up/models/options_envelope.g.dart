// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptionsEnvelope _$OptionsEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return OptionsEnvelope(
    data: Options2.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        OptionsEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : OptionsEnvelope._readExtras(
            OptionsEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$OptionsEnvelopeToJson(OptionsEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
