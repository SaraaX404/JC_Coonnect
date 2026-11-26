// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaStatus _$MfaStatusFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['enabled', 'recovery_codes_remaining'],
    disallowNullValues: const ['enabled', 'recovery_codes_remaining'],
  );
  return MfaStatus(
    enabled: json['enabled'] as bool,
    recoveryCodesRemaining: MfaStatus._read_recoveryCodesRemaining(
      json['recovery_codes_remaining'],
    ),
    additionalProperties:
        MfaStatus._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaStatus._readExtras(
            MfaStatus._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaStatusToJson(MfaStatus instance) => <String, dynamic>{
  'enabled': instance.enabled,
  'recovery_codes_remaining': ?MfaStatus._write_recoveryCodesRemaining(
    instance.recoveryCodesRemaining,
  ),
};
