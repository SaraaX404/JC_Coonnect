// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_permission_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedPermissionListMeta _$PaginatedPermissionListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedPermissionListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedPermissionListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedPermissionListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedPermissionListMeta._readExtras(
            PaginatedPermissionListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedPermissionListMetaToJson(
  PaginatedPermissionListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedPermissionListMeta._write_counts(instance.counts),
};
