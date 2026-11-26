// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_sent_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSentEnvelope _$CodeSentEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return CodeSentEnvelope(
    data: CodeSent.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        CodeSentEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : CodeSentEnvelope._readExtras(
            CodeSentEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$CodeSentEnvelopeToJson(CodeSentEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
