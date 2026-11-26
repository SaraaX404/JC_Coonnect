// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenPair _$TokenPairFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['access', 'refresh', 'token_type', 'expires_in'],
    disallowNullValues: const ['access', 'refresh', 'token_type', 'expires_in'],
  );
  return TokenPair(
    access: json['access'] as String,
    refresh: json['refresh'] as String,
    tokenType: json['token_type'] as String,
    expiresIn: TokenPair._read_expiresIn(json['expires_in']),
    additionalProperties:
        TokenPair._extras(json, 'additionalProperties') == null
        ? const {}
        : TokenPair._readExtras(
            TokenPair._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$TokenPairToJson(TokenPair instance) => <String, dynamic>{
  'access': instance.access,
  'refresh': instance.refresh,
  'token_type': instance.tokenType,
  'expires_in': ?TokenPair._write_expiresIn(instance.expiresIn),
};
