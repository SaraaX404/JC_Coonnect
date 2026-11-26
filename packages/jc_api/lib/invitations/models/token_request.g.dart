// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRequest _$TokenRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['token'],
    disallowNullValues: const ['token'],
  );
  return TokenRequest(
    token: json['token'] as String,
    additionalProperties:
        TokenRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : TokenRequest._readExtras(
            TokenRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$TokenRequestToJson(TokenRequest instance) =>
    <String, dynamic>{'token': instance.token};
