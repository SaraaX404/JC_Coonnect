// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['code', 'module', 'description'],
    disallowNullValues: const ['code', 'module', 'description'],
  );
  return Permission(
    code: json['code'] as String,
    module: json['module'] as String,
    description: json['description'] as String,
    additionalProperties:
        Permission._extras(json, 'additionalProperties') == null
        ? const {}
        : Permission._readExtras(
            Permission._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PermissionToJson(Permission instance) =>
    <String, dynamic>{
      'code': instance.code,
      'module': instance.module,
      'description': instance.description,
    };
