// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['mfa', 'schools']);
  return LoginResult(
    mfa: json['mfa'] == null
        ? null
        : MfaChallenge.fromJson(json['mfa'] as Map<String, dynamic>),
    schools: (json['schools'] as List<dynamic>?)
        ?.map((e) => SchoolChoice.fromJson(e as Map<String, dynamic>))
        .toList(),
    additionalProperties:
        LoginResult._extras(json, 'additionalProperties') == null
        ? const {}
        : LoginResult._readExtras(
            LoginResult._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$LoginResultToJson(LoginResult instance) =>
    <String, dynamic>{
      'mfa': instance.mfa?.toJson(),
      'schools': instance.schools?.map((e) => e.toJson()).toList(),
    };
