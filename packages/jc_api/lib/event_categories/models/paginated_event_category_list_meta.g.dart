// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_event_category_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedEventCategoryListMeta _$PaginatedEventCategoryListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedEventCategoryListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedEventCategoryListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedEventCategoryListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedEventCategoryListMeta._readExtras(
            PaginatedEventCategoryListMeta._extras(
              json,
              'additionalProperties',
            ),
          ),
  );
}

Map<String, dynamic> _$PaginatedEventCategoryListMetaToJson(
  PaginatedEventCategoryListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedEventCategoryListMeta._write_counts(instance.counts),
};
