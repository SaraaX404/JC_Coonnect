// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_enrollment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaEnrollment _$MfaEnrollmentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['otpauth_uri', 'secret'],
    disallowNullValues: const ['otpauth_uri', 'secret'],
  );
  return MfaEnrollment(
    otpauthUri: json['otpauth_uri'] as String,
    secret: json['secret'] as String,
    additionalProperties:
        MfaEnrollment._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaEnrollment._readExtras(
            MfaEnrollment._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaEnrollmentToJson(MfaEnrollment instance) =>
    <String, dynamic>{
      'otpauth_uri': instance.otpauthUri,
      'secret': instance.secret,
    };
