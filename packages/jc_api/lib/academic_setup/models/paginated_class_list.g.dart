// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_class_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClassList _$PaginatedClassListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedClassList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Class.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedClassListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedClassListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    additionalProperties:
        PaginatedClassList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedClassList._readExtras(
            PaginatedClassList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedClassListToJson(PaginatedClassList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'meta': instance.meta.toJson(),
    };
