// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_role_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRoleListMeta _$PaginatedRoleListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedRoleListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedRoleListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedRoleListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedRoleListMeta._readExtras(
            PaginatedRoleListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedRoleListMetaToJson(
  PaginatedRoleListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedRoleListMeta._write_counts(instance.counts),
};
