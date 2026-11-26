// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupToken _$SignupTokenFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['signup_token', 'expires_in'],
    disallowNullValues: const ['signup_token', 'expires_in'],
  );
  return SignupToken(
    signupToken: json['signup_token'] as String,
    expiresIn: SignupToken._read_expiresIn(json['expires_in']),
    additionalProperties:
        SignupToken._extras(json, 'additionalProperties') == null
        ? const {}
        : SignupToken._readExtras(
            SignupToken._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SignupTokenToJson(SignupToken instance) =>
    <String, dynamic>{
      'signup_token': instance.signupToken,
      'expires_in': ?SignupToken._write_expiresIn(instance.expiresIn),
    };
