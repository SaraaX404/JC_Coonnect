// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_assignment_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedAssignmentList _$PaginatedAssignmentListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedAssignmentList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Assignment.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedAssignmentListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedAssignmentListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedAssignmentList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedAssignmentList._readExtras(
            PaginatedAssignmentList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedAssignmentListToJson(
  PaginatedAssignmentList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
