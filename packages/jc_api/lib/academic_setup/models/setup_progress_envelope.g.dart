// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_progress_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetupProgressEnvelope _$SetupProgressEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return SetupProgressEnvelope(
    data: SetupProgress.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        SetupProgressEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : SetupProgressEnvelope._readExtras(
            SetupProgressEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SetupProgressEnvelopeToJson(
  SetupProgressEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
