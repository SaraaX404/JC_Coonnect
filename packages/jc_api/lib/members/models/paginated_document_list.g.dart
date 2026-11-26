// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_document_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedDocumentList _$PaginatedDocumentListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedDocumentList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Document.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedDocumentListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedDocumentListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedDocumentList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedDocumentList._readExtras(
            PaginatedDocumentList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedDocumentListToJson(
  PaginatedDocumentList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
