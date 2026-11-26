// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_activity_entry_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedActivityEntryList _$PaginatedActivityEntryListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedActivityEntryList(
    data: (json['data'] as List<dynamic>)
        .map((e) => ActivityEntry.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedActivityEntryListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedActivityEntryListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedActivityEntryList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedActivityEntryList._readExtras(
            PaginatedActivityEntryList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedActivityEntryListToJson(
  PaginatedActivityEntryList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
