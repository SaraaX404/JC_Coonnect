// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_group_member_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGroupMemberListMeta _$PaginatedGroupMemberListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedGroupMemberListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedGroupMemberListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedGroupMemberListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedGroupMemberListMeta._readExtras(
            PaginatedGroupMemberListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGroupMemberListMetaToJson(
  PaginatedGroupMemberListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedGroupMemberListMeta._write_counts(instance.counts),
};
