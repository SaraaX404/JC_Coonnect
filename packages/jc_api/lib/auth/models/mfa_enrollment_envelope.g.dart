// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_enrollment_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaEnrollmentEnvelope _$MfaEnrollmentEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return MfaEnrollmentEnvelope(
    data: MfaEnrollment.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        MfaEnrollmentEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaEnrollmentEnvelope._readExtras(
            MfaEnrollmentEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaEnrollmentEnvelopeToJson(
  MfaEnrollmentEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
