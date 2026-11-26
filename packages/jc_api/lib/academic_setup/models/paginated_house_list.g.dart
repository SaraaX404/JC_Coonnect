// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_house_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedHouseList _$PaginatedHouseListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedHouseList(
    data: (json['data'] as List<dynamic>)
        .map((e) => House.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedHouseListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedHouseListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    additionalProperties:
        PaginatedHouseList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedHouseList._readExtras(
            PaginatedHouseList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedHouseListToJson(PaginatedHouseList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'meta': instance.meta.toJson(),
    };
