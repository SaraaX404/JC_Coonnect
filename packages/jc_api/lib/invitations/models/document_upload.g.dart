// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentUpload _$DocumentUploadFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['file_key', 'upload', 'expires_in'],
    disallowNullValues: const ['file_key', 'upload', 'expires_in'],
  );
  return DocumentUpload(
    fileKey: json['file_key'] as String,
    upload: PresignedPost.fromJson(json['upload'] as Map<String, dynamic>),
    expiresIn: DocumentUpload._read_expiresIn(json['expires_in']),
    additionalProperties:
        DocumentUpload._extras(json, 'additionalProperties') == null
        ? const {}
        : DocumentUpload._readExtras(
            DocumentUpload._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DocumentUploadToJson(DocumentUpload instance) =>
    <String, dynamic>{
      'file_key': instance.fileKey,
      'upload': instance.upload.toJson(),
      'expires_in': ?DocumentUpload._write_expiresIn(instance.expiresIn),
    };
