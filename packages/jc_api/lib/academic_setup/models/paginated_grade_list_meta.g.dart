// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_grade_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGradeListMeta _$PaginatedGradeListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedGradeListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedGradeListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedGradeListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGradeListMeta._readExtras(
            PaginatedGradeListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGradeListMetaToJson(
  PaginatedGradeListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedGradeListMeta._write_counts(instance.counts),
};
