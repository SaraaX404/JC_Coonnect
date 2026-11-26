// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_track_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTrackList _$PaginatedTrackListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedTrackList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Track.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedTrackListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedTrackListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    additionalProperties:
        PaginatedTrackList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedTrackList._readExtras(
            PaginatedTrackList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedTrackListToJson(PaginatedTrackList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'meta': instance.meta.toJson(),
    };
