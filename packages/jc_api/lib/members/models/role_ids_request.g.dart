// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_ids_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleIdsRequest _$RoleIdsRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['role_ids'],
    disallowNullValues: const ['role_ids'],
  );
  return RoleIdsRequest(
    roleIds: (json['role_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    additionalProperties:
        RoleIdsRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : RoleIdsRequest._readExtras(
            RoleIdsRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RoleIdsRequestToJson(RoleIdsRequest instance) =>
    <String, dynamic>{'role_ids': instance.roleIds};
