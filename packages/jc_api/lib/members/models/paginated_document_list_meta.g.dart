// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_document_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedDocumentListMeta _$PaginatedDocumentListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedDocumentListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedDocumentListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedDocumentListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedDocumentListMeta._readExtras(
            PaginatedDocumentListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedDocumentListMetaToJson(
  PaginatedDocumentListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedDocumentListMeta._write_counts(instance.counts),
};
