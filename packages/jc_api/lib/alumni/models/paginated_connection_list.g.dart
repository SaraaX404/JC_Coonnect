// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_connection_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedConnectionList _$PaginatedConnectionListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedConnectionList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Connection.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedConnectionListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedConnectionListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedConnectionList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedConnectionList._readExtras(
            PaginatedConnectionList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedConnectionListToJson(
  PaginatedConnectionList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
