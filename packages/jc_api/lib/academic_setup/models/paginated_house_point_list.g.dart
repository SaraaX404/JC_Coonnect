// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_house_point_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedHousePointList _$PaginatedHousePointListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedHousePointList(
    data: (json['data'] as List<dynamic>)
        .map((e) => HousePoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedHousePointListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedHousePointListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedHousePointList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedHousePointList._readExtras(
            PaginatedHousePointList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedHousePointListToJson(
  PaginatedHousePointList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
