// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCategoryEnvelope _$EventCategoryEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return EventCategoryEnvelope(
    data: EventCategory.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        EventCategoryEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : EventCategoryEnvelope._readExtras(
            EventCategoryEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$EventCategoryEnvelopeToJson(
  EventCategoryEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
