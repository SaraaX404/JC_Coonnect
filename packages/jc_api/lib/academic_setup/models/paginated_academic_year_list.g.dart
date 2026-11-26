// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_academic_year_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedAcademicYearList _$PaginatedAcademicYearListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedAcademicYearList(
    data: (json['data'] as List<dynamic>)
        .map((e) => AcademicYear.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedAcademicYearListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedAcademicYearListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedAcademicYearList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedAcademicYearList._readExtras(
            PaginatedAcademicYearList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedAcademicYearListToJson(
  PaginatedAcademicYearList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
