// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_event_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedEventCategoryList _$PaginatedEventCategoryListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedEventCategoryList(
    data: (json['data'] as List<dynamic>)
        .map((e) => EventCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedEventCategoryListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedEventCategoryListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedEventCategoryList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedEventCategoryList._readExtras(
            PaginatedEventCategoryList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedEventCategoryListToJson(
  PaginatedEventCategoryList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
