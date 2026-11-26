// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_upload_request_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantUploadRequestRequest _$ApplicantUploadRequestRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'token',
      'kind',
      'file_name',
      'content_type',
      'size_bytes',
    ],
    disallowNullValues: const [
      'token',
      'kind',
      'file_name',
      'content_type',
      'size_bytes',
    ],
  );
  return ApplicantUploadRequestRequest(
    token: json['token'] as String,
    kind: ApplicantUploadRequestRequest._read_kind(json['kind']),
    fileName: json['file_name'] as String,
    contentType: json['content_type'] as String,
    sizeBytes: ApplicantUploadRequestRequest._read_sizeBytes(
      json['size_bytes'],
    ),
    additionalProperties:
        ApplicantUploadRequestRequest._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : ApplicantUploadRequestRequest._readExtras(
            ApplicantUploadRequestRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ApplicantUploadRequestRequestToJson(
  ApplicantUploadRequestRequest instance,
) => <String, dynamic>{
  'token': instance.token,
  'kind': ?ApplicantUploadRequestRequest._write_kind(instance.kind),
  'file_name': instance.fileName,
  'content_type': instance.contentType,
  'size_bytes': ?ApplicantUploadRequestRequest._write_sizeBytes(
    instance.sizeBytes,
  ),
};
