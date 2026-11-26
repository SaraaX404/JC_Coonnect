// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackEnvelope _$TrackEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return TrackEnvelope(
    data: Track.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        TrackEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : TrackEnvelope._readExtras(
            TrackEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$TrackEnvelopeToJson(TrackEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
