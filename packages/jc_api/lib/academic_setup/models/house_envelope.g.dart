// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseEnvelope _$HouseEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return HouseEnvelope(
    data: House.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        HouseEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : HouseEnvelope._readExtras(
            HouseEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$HouseEnvelopeToJson(HouseEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
