// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_subject_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedSubjectInputRequest _$PatchedSubjectInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['name', 'code']);
  return PatchedSubjectInputRequest(
    name: json['name'] as String?,
    code: json['code'] as String?,
    additionalProperties:
        PatchedSubjectInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedSubjectInputRequest._readExtras(
            PatchedSubjectInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedSubjectInputRequestToJson(
  PatchedSubjectInputRequest instance,
) => <String, dynamic>{'name': ?instance.name, 'code': ?instance.code};
