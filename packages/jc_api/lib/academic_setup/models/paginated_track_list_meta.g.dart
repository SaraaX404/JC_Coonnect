// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_track_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTrackListMeta _$PaginatedTrackListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedTrackListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedTrackListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedTrackListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedTrackListMeta._readExtras(
            PaginatedTrackListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedTrackListMetaToJson(
  PaginatedTrackListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedTrackListMeta._write_counts(instance.counts),
};
