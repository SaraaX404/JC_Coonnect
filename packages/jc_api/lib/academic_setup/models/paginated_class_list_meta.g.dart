// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_class_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClassListMeta _$PaginatedClassListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedClassListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedClassListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedClassListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedClassListMeta._readExtras(
            PaginatedClassListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedClassListMetaToJson(
  PaginatedClassListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedClassListMeta._write_counts(instance.counts),
};
