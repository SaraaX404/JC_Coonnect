// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupInputRequest _$GroupInputRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'kind'],
    disallowNullValues: const ['name', 'kind', 'description'],
  );
  return GroupInputRequest(
    name: json['name'] as String,
    kind: GroupInputRequest._read_kind(json['kind']),
    description: json['description'] as String?,
    additionalProperties:
        GroupInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : GroupInputRequest._readExtras(
            GroupInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GroupInputRequestToJson(GroupInputRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'kind': ?GroupInputRequest._write_kind(instance.kind),
      'description': ?instance.description,
    };
