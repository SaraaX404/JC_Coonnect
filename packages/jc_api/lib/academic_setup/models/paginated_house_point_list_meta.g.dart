// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_house_point_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedHousePointListMeta _$PaginatedHousePointListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedHousePointListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedHousePointListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedHousePointListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedHousePointListMeta._readExtras(
            PaginatedHousePointListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedHousePointListMetaToJson(
  PaginatedHousePointListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedHousePointListMeta._write_counts(instance.counts),
};
