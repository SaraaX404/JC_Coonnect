// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_codes_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecoveryCodesEnvelope _$RecoveryCodesEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return RecoveryCodesEnvelope(
    data: RecoveryCodes.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        RecoveryCodesEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : RecoveryCodesEnvelope._readExtras(
            RecoveryCodesEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RecoveryCodesEnvelopeToJson(
  RecoveryCodesEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
