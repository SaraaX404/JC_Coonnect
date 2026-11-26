// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_connection_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedConnectionListMeta _$PaginatedConnectionListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedConnectionListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedConnectionListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedConnectionListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedConnectionListMeta._readExtras(
            PaginatedConnectionListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedConnectionListMetaToJson(
  PaginatedConnectionListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedConnectionListMeta._write_counts(instance.counts),
};
