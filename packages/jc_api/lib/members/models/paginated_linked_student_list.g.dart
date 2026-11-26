// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_linked_student_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedLinkedStudentList _$PaginatedLinkedStudentListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedLinkedStudentList(
    data: (json['data'] as List<dynamic>)
        .map((e) => LinkedStudent.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedLinkedStudentListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedLinkedStudentListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedLinkedStudentList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedLinkedStudentList._readExtras(
            PaginatedLinkedStudentList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedLinkedStudentListToJson(
  PaginatedLinkedStudentList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
