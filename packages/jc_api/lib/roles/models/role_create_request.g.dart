// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleCreateRequest _$RoleCreateRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name'],
    disallowNullValues: const ['name', 'description', 'permissions'],
  );
  return RoleCreateRequest(
    name: json['name'] as String,
    description: json['description'] as String?,
    permissions: (json['permissions'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    additionalProperties:
        RoleCreateRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : RoleCreateRequest._readExtras(
            RoleCreateRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RoleCreateRequestToJson(RoleCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': ?instance.description,
      'permissions': ?instance.permissions,
    };
