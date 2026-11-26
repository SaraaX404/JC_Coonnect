// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_group_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGroupList _$PaginatedGroupListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedGroupList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Group.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedGroupListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedGroupListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    additionalProperties:
        PaginatedGroupList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGroupList._readExtras(
            PaginatedGroupList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGroupListToJson(PaginatedGroupList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'meta': instance.meta.toJson(),
    };
