// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeEnvelope _$MeEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return MeEnvelope(
    data: Me.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        MeEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : MeEnvelope._readExtras(
            MeEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MeEnvelopeToJson(MeEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
