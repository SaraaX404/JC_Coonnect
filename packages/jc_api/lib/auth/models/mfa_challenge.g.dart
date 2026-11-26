// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MfaChallenge _$MfaChallengeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['challenge', 'method', 'expires_in'],
    disallowNullValues: const ['challenge', 'method', 'expires_in'],
  );
  return MfaChallenge(
    challenge: json['challenge'] as String,
    method: MfaChallenge._read_method(json['method']),
    expiresIn: MfaChallenge._read_expiresIn(json['expires_in']),
    additionalProperties:
        MfaChallenge._extras(json, 'additionalProperties') == null
        ? const {}
        : MfaChallenge._readExtras(
            MfaChallenge._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MfaChallengeToJson(MfaChallenge instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'method': ?MfaChallenge._write_method(instance.method),
      'expires_in': ?MfaChallenge._write_expiresIn(instance.expiresIn),
    };
