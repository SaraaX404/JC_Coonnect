// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaCodeRequest _$MfaCodeRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['code'],
    disallowNullValues: const ['code'],
  );
  return MfaCodeRequest(
    code: json['code'] as String,
    additionalProperties:
        MfaCodeRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaCodeRequest._readExtras(
            MfaCodeRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaCodeRequestToJson(MfaCodeRequest instance) =>
    <String, dynamic>{'code': instance.code};
