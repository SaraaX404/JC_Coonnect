// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'kind',
      'file_name',
      'content_type',
      'size_bytes',
      'uploaded_at',
      'download_url',
    ],
    disallowNullValues: const [
      'id',
      'kind',
      'file_name',
      'content_type',
      'size_bytes',
      'uploaded_at',
      'download_url',
    ],
  );
  return Document(
    id: json['id'] as String,
    kind: Document._read_kind(json['kind']),
    fileName: json['file_name'] as String,
    contentType: json['content_type'] as String,
    sizeBytes: Document._read_sizeBytes(json['size_bytes']),
    uploadedAt: Document._read_uploadedAt(json['uploaded_at']),
    downloadUrl: json['download_url'] as String,
    additionalProperties: Document._extras(json, 'additionalProperties') == null
        ? const {}
        : Document._readExtras(Document._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
  'id': instance.id,
  'kind': ?Document._write_kind(instance.kind),
  'file_name': instance.fileName,
  'content_type': instance.contentType,
  'size_bytes': ?Document._write_sizeBytes(instance.sizeBytes),
  'uploaded_at': ?Document._write_uploadedAt(instance.uploadedAt),
  'download_url': instance.downloadUrl,
};
