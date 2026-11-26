// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_subject_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedSubjectList _$PaginatedSubjectListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedSubjectList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Subject.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedSubjectListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedSubjectListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedSubjectList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedSubjectList._readExtras(
            PaginatedSubjectList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedSubjectListToJson(
  PaginatedSubjectList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
