// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_role_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedRoleUpdateRequest _$PatchedRoleUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['name', 'description']);
  return PatchedRoleUpdateRequest(
    name: json['name'] as String?,
    description: json['description'] as String?,
    additionalProperties:
        PatchedRoleUpdateRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedRoleUpdateRequest._readExtras(
            PatchedRoleUpdateRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedRoleUpdateRequestToJson(
  PatchedRoleUpdateRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
};
