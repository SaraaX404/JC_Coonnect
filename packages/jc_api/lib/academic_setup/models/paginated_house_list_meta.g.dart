// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_house_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedHouseListMeta _$PaginatedHouseListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedHouseListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedHouseListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedHouseListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedHouseListMeta._readExtras(
            PaginatedHouseListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedHouseListMetaToJson(
  PaginatedHouseListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedHouseListMeta._write_counts(instance.counts),
};
