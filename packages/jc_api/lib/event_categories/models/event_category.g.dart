// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCategory _$EventCategoryFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'category_group',
      'description',
      'is_active',
      'archived_at',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'category_group',
      'description',
      'is_active',
    ],
  );
  return EventCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    categoryGroup: EventCategory._read_categoryGroup(json['category_group']),
    description: json['description'] as String,
    isActive: json['is_active'] as bool,
    archivedAt: EventCategory._read_archivedAt(json['archived_at']),
    additionalProperties:
        EventCategory._extras(json, 'additionalProperties') == null
        ? const {}
        : EventCategory._readExtras(
            EventCategory._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EventCategoryToJson(
  EventCategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category_group': ?EventCategory._write_categoryGroup(instance.categoryGroup),
  'description': instance.description,
  'is_active': instance.isActive,
  'archived_at': EventCategory._write_archivedAt(instance.archivedAt),
};
