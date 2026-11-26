// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'right_list_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RightListEnvelope _$RightListEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return RightListEnvelope(
    data: (json['data'] as List<dynamic>)
        .map((e) => Right.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        RightListEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : RightListEnvelope._readExtras(
            RightListEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RightListEnvelopeToJson(RightListEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
