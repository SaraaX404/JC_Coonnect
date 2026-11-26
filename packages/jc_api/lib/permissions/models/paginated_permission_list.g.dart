// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_permission_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedPermissionList _$PaginatedPermissionListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedPermissionList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Permission.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedPermissionListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedPermissionListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedPermissionList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedPermissionList._readExtras(
            PaginatedPermissionList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedPermissionListToJson(
  PaginatedPermissionList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
