// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_member_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedMemberListMeta _$PaginatedMemberListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedMemberListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedMemberListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedMemberListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedMemberListMeta._readExtras(
            PaginatedMemberListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedMemberListMetaToJson(
  PaginatedMemberListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedMemberListMeta._write_counts(instance.counts),
};
