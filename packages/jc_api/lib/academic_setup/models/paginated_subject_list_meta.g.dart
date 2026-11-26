// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_subject_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedSubjectListMeta _$PaginatedSubjectListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedSubjectListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedSubjectListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedSubjectListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedSubjectListMeta._readExtras(
            PaginatedSubjectListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedSubjectListMetaToJson(
  PaginatedSubjectListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedSubjectListMeta._write_counts(instance.counts),
};
