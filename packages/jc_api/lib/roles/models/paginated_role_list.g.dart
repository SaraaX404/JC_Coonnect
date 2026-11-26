// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_role_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRoleList _$PaginatedRoleListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedRoleList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Role.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedRoleListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedRoleListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    additionalProperties:
        PaginatedRoleList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedRoleList._readExtras(
            PaginatedRoleList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedRoleListToJson(PaginatedRoleList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'meta': instance.meta.toJson(),
    };
