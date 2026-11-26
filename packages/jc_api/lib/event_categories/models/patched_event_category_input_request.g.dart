// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_event_category_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedEventCategoryInputRequest _$PatchedEventCategoryInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'name',
      'category_group',
      'description',
      'is_active',
    ],
  );
  return PatchedEventCategoryInputRequest(
    name: json['name'] as String?,
    categoryGroup: PatchedEventCategoryInputRequest._read_categoryGroup(
      json['category_group'],
    ),
    description: json['description'] as String?,
    isActive:
        PatchedEventCategoryInputRequest._presentValue(json, 'is_active') ==
            null
        ? true
        : PatchedEventCategoryInputRequest._read_isActive(
            PatchedEventCategoryInputRequest._presentValue(json, 'is_active')
                as Object,
          ),
    additionalProperties:
        PatchedEventCategoryInputRequest._extras(
              json,
              'additionalProperties',
            ) ==
            null
        ? const {}
        : PatchedEventCategoryInputRequest._readExtras(
            PatchedEventCategoryInputRequest._extras(
              json,
              'additionalProperties',
            ),
          ),
  );
}

Map<String, dynamic> _$PatchedEventCategoryInputRequestToJson(
  PatchedEventCategoryInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'category_group': ?PatchedEventCategoryInputRequest._write_categoryGroup(
    instance.categoryGroup,
  ),
  'description': ?instance.description,
  'is_active': ?PatchedEventCategoryInputRequest._write_isActive(
    instance.isActive,
  ),
};
