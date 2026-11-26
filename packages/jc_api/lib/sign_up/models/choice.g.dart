// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choice _$ChoiceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['value', 'label'],
    disallowNullValues: const ['value', 'label'],
  );
  return Choice(
    value: json['value'] as String,
    label: json['label'] as String,
    additionalProperties: Choice._extras(json, 'additionalProperties') == null
        ? const {}
        : Choice._readExtras(Choice._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
  'value': instance.value,
  'label': instance.label,
};
