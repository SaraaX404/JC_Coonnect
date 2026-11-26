// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_group_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedGroupInputRequest _$PatchedGroupInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['name', 'kind', 'description']);
  return PatchedGroupInputRequest(
    name: json['name'] as String?,
    kind: PatchedGroupInputRequest._read_kind(json['kind']),
    description: json['description'] as String?,
    additionalProperties:
        PatchedGroupInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedGroupInputRequest._readExtras(
            PatchedGroupInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedGroupInputRequestToJson(
  PatchedGroupInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'kind': ?PatchedGroupInputRequest._write_kind(instance.kind),
  'description': ?instance.description,
};
