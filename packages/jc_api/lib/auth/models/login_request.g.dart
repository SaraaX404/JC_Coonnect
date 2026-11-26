// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['email', 'password'],
    disallowNullValues: const ['email', 'password', 'device_info'],
  );
  return LoginRequest(
    email: json['email'] as String,
    password: json['password'] as String,
    schoolId: json['school_id'] as String?,
    deviceInfo: json['device_info'] as String?,
    additionalProperties:
        LoginRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : LoginRequest._readExtras(
            LoginRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'school_id': ?instance.schoolId,
      'device_info': ?instance.deviceInfo,
    };
