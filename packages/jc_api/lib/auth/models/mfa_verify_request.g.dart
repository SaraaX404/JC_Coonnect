// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaVerifyRequest _$MfaVerifyRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['challenge'],
    disallowNullValues: const ['code', 'recovery_code', 'challenge'],
  );
  return MfaVerifyRequest(
    code: json['code'] as String?,
    recoveryCode: json['recovery_code'] as String?,
    challenge: json['challenge'] as String,
    additionalProperties:
        MfaVerifyRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaVerifyRequest._readExtras(
            MfaVerifyRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaVerifyRequestToJson(MfaVerifyRequest instance) =>
    <String, dynamic>{
      'code': ?instance.code,
      'recovery_code': ?instance.recoveryCode,
      'challenge': instance.challenge,
    };
