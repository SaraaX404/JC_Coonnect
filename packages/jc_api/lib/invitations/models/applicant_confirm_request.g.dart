// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_confirm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantConfirmRequest _$ApplicantConfirmRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['token', 'kind', 'file_key', 'file_name'],
    disallowNullValues: const ['token', 'kind', 'file_key', 'file_name'],
  );
  return ApplicantConfirmRequest(
    token: json['token'] as String,
    kind: ApplicantConfirmRequest._read_kind(json['kind']),
    fileKey: json['file_key'] as String,
    fileName: json['file_name'] as String,
    additionalProperties:
        ApplicantConfirmRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : ApplicantConfirmRequest._readExtras(
            ApplicantConfirmRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ApplicantConfirmRequestToJson(
  ApplicantConfirmRequest instance,
) => <String, dynamic>{
  'token': instance.token,
  'kind': ?ApplicantConfirmRequest._write_kind(instance.kind),
  'file_key': instance.fileKey,
  'file_name': instance.fileName,
};
