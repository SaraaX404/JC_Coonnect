// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name', 'permissions'],
    disallowNullValues: const [
      'id',
      'name',
      'description',
      'is_system',
      'permissions',
    ],
  );
  return Role(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String?,
    isSystem: json['is_system'] as bool?,
    permissions: (json['permissions'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    additionalProperties: Role._extras(json, 'additionalProperties') == null
        ? const {}
        : Role._readExtras(Role._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': ?instance.description,
  'is_system': ?instance.isSystem,
  'permissions': instance.permissions,
};
