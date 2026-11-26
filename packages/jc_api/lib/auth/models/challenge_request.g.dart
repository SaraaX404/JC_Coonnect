// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeRequest _$ChallengeRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['challenge'],
    disallowNullValues: const ['challenge'],
  );
  return ChallengeRequest(
    challenge: json['challenge'] as String,
    additionalProperties:
        ChallengeRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : ChallengeRequest._readExtras(
            ChallengeRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ChallengeRequestToJson(ChallengeRequest instance) =>
    <String, dynamic>{'challenge': instance.challenge};
