// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_member_group_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedMemberGroupListMeta _$PaginatedMemberGroupListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedMemberGroupListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedMemberGroupListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedMemberGroupListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedMemberGroupListMeta._readExtras(
            PaginatedMemberGroupListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedMemberGroupListMetaToJson(
  PaginatedMemberGroupListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedMemberGroupListMeta._write_counts(instance.counts),
};
