// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_activity_entry_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedActivityEntryListMeta _$PaginatedActivityEntryListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedActivityEntryListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedActivityEntryListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedActivityEntryListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedActivityEntryListMeta._readExtras(
            PaginatedActivityEntryListMeta._extras(
              json,
              'additionalProperties',
            ),
          ),
  );
}

Map<String, dynamic> _$PaginatedActivityEntryListMetaToJson(
  PaginatedActivityEntryListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedActivityEntryListMeta._write_counts(instance.counts),
};
