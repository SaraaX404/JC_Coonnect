// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleRef _$RoleRefFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name'],
    disallowNullValues: const ['id', 'name'],
  );
  return RoleRef(
    id: json['id'] as String,
    name: json['name'] as String,
    additionalProperties: RoleRef._extras(json, 'additionalProperties') == null
        ? const {}
        : RoleRef._readExtras(RoleRef._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$RoleRefToJson(RoleRef instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
