// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_code_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailCodeVerifyRequest _$EmailCodeVerifyRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['school_id', 'email', 'code'],
    disallowNullValues: const ['school_id', 'email', 'code'],
  );
  return EmailCodeVerifyRequest(
    schoolId: json['school_id'] as String,
    email: json['email'] as String,
    code: json['code'] as String,
    additionalProperties:
        EmailCodeVerifyRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : EmailCodeVerifyRequest._readExtras(
            EmailCodeVerifyRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EmailCodeVerifyRequestToJson(
  EmailCodeVerifyRequest instance,
) => <String, dynamic>{
  'school_id': instance.schoolId,
  'email': instance.email,
  'code': instance.code,
};
