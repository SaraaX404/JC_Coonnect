// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_status_event_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedStatusEventListMeta _$PaginatedStatusEventListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedStatusEventListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedStatusEventListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedStatusEventListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedStatusEventListMeta._readExtras(
            PaginatedStatusEventListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedStatusEventListMetaToJson(
  PaginatedStatusEventListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedStatusEventListMeta._write_counts(instance.counts),
};
