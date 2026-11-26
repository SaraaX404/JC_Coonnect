// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_code_request_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailCodeRequestRequest _$EmailCodeRequestRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['school_id', 'email'],
    disallowNullValues: const ['school_id', 'email'],
  );
  return EmailCodeRequestRequest(
    schoolId: json['school_id'] as String,
    email: json['email'] as String,
    additionalProperties:
        EmailCodeRequestRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : EmailCodeRequestRequest._readExtras(
            EmailCodeRequestRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EmailCodeRequestRequestToJson(
  EmailCodeRequestRequest instance,
) => <String, dynamic>{'school_id': instance.schoolId, 'email': instance.email};
