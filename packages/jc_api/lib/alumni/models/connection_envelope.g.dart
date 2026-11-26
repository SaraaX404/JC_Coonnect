// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectionEnvelope _$ConnectionEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return ConnectionEnvelope(
    data: Connection.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        ConnectionEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : ConnectionEnvelope._readExtras(
            ConnectionEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ConnectionEnvelopeToJson(ConnectionEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
