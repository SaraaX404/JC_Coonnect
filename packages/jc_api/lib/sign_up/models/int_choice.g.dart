// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'int_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntChoice _$IntChoiceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['value', 'label'],
    disallowNullValues: const ['value', 'label'],
  );
  return IntChoice(
    value: IntChoice._read_value(json['value']),
    label: json['label'] as String,
    additionalProperties:
        IntChoice._extras(json, 'additionalProperties') == null
        ? const {}
        : IntChoice._readExtras(
            IntChoice._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$IntChoiceToJson(IntChoice instance) => <String, dynamic>{
  'value': ?IntChoice._write_value(instance.value),
  'label': instance.label,
};
