// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentEnvelope _$DocumentEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return DocumentEnvelope(
    data: Document.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        DocumentEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : DocumentEnvelope._readExtras(
            DocumentEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DocumentEnvelopeToJson(DocumentEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
