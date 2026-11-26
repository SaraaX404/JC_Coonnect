// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_upload_request_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentUploadRequestRequest _$DocumentUploadRequestRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['kind', 'file_name', 'content_type', 'size_bytes'],
    disallowNullValues: const [
      'kind',
      'file_name',
      'content_type',
      'size_bytes',
    ],
  );
  return DocumentUploadRequestRequest(
    kind: DocumentUploadRequestRequest._read_kind(json['kind']),
    fileName: json['file_name'] as String,
    contentType: json['content_type'] as String,
    sizeBytes: DocumentUploadRequestRequest._read_sizeBytes(json['size_bytes']),
    additionalProperties:
        DocumentUploadRequestRequest._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : DocumentUploadRequestRequest._readExtras(
            DocumentUploadRequestRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DocumentUploadRequestRequestToJson(
  DocumentUploadRequestRequest instance,
) => <String, dynamic>{
  'kind': ?DocumentUploadRequestRequest._write_kind(instance.kind),
  'file_name': instance.fileName,
  'content_type': instance.contentType,
  'size_bytes': ?DocumentUploadRequestRequest._write_sizeBytes(
    instance.sizeBytes,
  ),
};
