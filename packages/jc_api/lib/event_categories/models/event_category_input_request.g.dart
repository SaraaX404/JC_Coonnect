// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCategoryInputRequest _$EventCategoryInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'category_group'],
    disallowNullValues: const [
      'name',
      'category_group',
      'description',
      'is_active',
    ],
  );
  return EventCategoryInputRequest(
    name: json['name'] as String,
    categoryGroup: EventCategoryInputRequest._read_categoryGroup(
      json['category_group'],
    ),
    description: json['description'] as String?,
    isActive: EventCategoryInputRequest._presentValue(json, 'is_active') == null
        ? true
        : EventCategoryInputRequest._read_isActive(
            EventCategoryInputRequest._presentValue(json, 'is_active')
                as Object,
          ),
    additionalProperties:
        EventCategoryInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : EventCategoryInputRequest._readExtras(
            EventCategoryInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EventCategoryInputRequestToJson(
  EventCategoryInputRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'category_group': ?EventCategoryInputRequest._write_categoryGroup(
    instance.categoryGroup,
  ),
  'description': ?instance.description,
  'is_active': ?EventCategoryInputRequest._write_isActive(instance.isActive),
};
