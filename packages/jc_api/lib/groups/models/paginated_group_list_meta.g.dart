// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_group_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGroupListMeta _$PaginatedGroupListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedGroupListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedGroupListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedGroupListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGroupListMeta._readExtras(
            PaginatedGroupListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGroupListMetaToJson(
  PaginatedGroupListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedGroupListMeta._write_counts(instance.counts),
};
