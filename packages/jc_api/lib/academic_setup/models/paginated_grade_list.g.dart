// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_grade_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGradeList _$PaginatedGradeListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedGradeList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Grade.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedGradeListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedGradeListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    additionalProperties:
        PaginatedGradeList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGradeList._readExtras(
            PaginatedGradeList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGradeListToJson(PaginatedGradeList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'meta': instance.meta.toJson(),
    };
