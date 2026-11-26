// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_confirm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentConfirmRequest _$DocumentConfirmRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['kind', 'file_key', 'file_name'],
    disallowNullValues: const ['kind', 'file_key', 'file_name'],
  );
  return DocumentConfirmRequest(
    kind: DocumentConfirmRequest._read_kind(json['kind']),
    fileKey: json['file_key'] as String,
    fileName: json['file_name'] as String,
    additionalProperties:
        DocumentConfirmRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : DocumentConfirmRequest._readExtras(
            DocumentConfirmRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DocumentConfirmRequestToJson(
  DocumentConfirmRequest instance,
) => <String, dynamic>{
  'kind': ?DocumentConfirmRequest._write_kind(instance.kind),
  'file_key': instance.fileKey,
  'file_name': instance.fileName,
};
