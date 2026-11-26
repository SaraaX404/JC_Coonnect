// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_status_event_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedStatusEventList _$PaginatedStatusEventListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedStatusEventList(
    data: (json['data'] as List<dynamic>)
        .map((e) => StatusEvent.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedStatusEventListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedStatusEventListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedStatusEventList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedStatusEventList._readExtras(
            PaginatedStatusEventList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedStatusEventListToJson(
  PaginatedStatusEventList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
