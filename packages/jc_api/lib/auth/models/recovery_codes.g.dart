// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_codes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecoveryCodes _$RecoveryCodesFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['recovery_codes'],
    disallowNullValues: const ['recovery_codes'],
  );
  return RecoveryCodes(
    recoveryCodes: (json['recovery_codes'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    additionalProperties:
        RecoveryCodes._extras(json, 'additionalProperties') == null
        ? const {}
        : RecoveryCodes._readExtras(
            RecoveryCodes._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RecoveryCodesToJson(RecoveryCodes instance) =>
    <String, dynamic>{'recovery_codes': instance.recoveryCodes};
