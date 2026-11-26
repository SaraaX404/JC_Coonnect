// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_sent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSent _$CodeSentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['expires_in'],
    disallowNullValues: const ['expires_in'],
  );
  return CodeSent(
    expiresIn: CodeSent._read_expiresIn(json['expires_in']),
    additionalProperties: CodeSent._extras(json, 'additionalProperties') == null
        ? const {}
        : CodeSent._readExtras(CodeSent._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$CodeSentToJson(CodeSent instance) => <String, dynamic>{
  'expires_in': ?CodeSent._write_expiresIn(instance.expiresIn),
};
