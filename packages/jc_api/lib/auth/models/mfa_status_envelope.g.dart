// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_status_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaStatusEnvelope _$MfaStatusEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return MfaStatusEnvelope(
    data: MfaStatus.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        MfaStatusEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaStatusEnvelope._readExtras(
            MfaStatusEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaStatusEnvelopeToJson(MfaStatusEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
