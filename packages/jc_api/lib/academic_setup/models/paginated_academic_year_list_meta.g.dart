// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_academic_year_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedAcademicYearListMeta _$PaginatedAcademicYearListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedAcademicYearListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedAcademicYearListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedAcademicYearListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedAcademicYearListMeta._readExtras(
            PaginatedAcademicYearListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedAcademicYearListMetaToJson(
  PaginatedAcademicYearListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedAcademicYearListMeta._write_counts(instance.counts),
};
