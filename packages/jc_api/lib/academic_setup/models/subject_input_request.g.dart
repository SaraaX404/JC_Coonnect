// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectInputRequest _$SubjectInputRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name'],
    disallowNullValues: const ['name', 'code'],
  );
  return SubjectInputRequest(
    name: json['name'] as String,
    code: json['code'] as String?,
    additionalProperties:
        SubjectInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : SubjectInputRequest._readExtras(
            SubjectInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SubjectInputRequestToJson(
  SubjectInputRequest instance,
) => <String, dynamic>{'name': instance.name, 'code': ?instance.code};
