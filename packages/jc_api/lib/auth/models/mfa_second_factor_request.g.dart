// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_second_factor_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaSecondFactorRequest _$MfaSecondFactorRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['code', 'recovery_code']);
  return MfaSecondFactorRequest(
    code: json['code'] as String?,
    recoveryCode: json['recovery_code'] as String?,
    additionalProperties:
        MfaSecondFactorRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaSecondFactorRequest._readExtras(
            MfaSecondFactorRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaSecondFactorRequestToJson(
  MfaSecondFactorRequest instance,
) => <String, dynamic>{
  'code': ?instance.code,
  'recovery_code': ?instance.recoveryCode,
};
