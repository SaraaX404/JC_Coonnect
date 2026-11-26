// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_upload_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentUploadEnvelope _$DocumentUploadEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return DocumentUploadEnvelope(
    data: DocumentUpload.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        DocumentUploadEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : DocumentUploadEnvelope._readExtras(
            DocumentUploadEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DocumentUploadEnvelopeToJson(
  DocumentUploadEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
