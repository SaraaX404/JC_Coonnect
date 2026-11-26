// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportResult _$ImportResultFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['imported', 'linked'],
    disallowNullValues: const ['imported', 'linked'],
  );
  return ImportResult(
    imported: ImportResult._read_imported(json['imported']),
    linked: ImportResult._read_linked(json['linked']),
    additionalProperties:
        ImportResult._extras(json, 'additionalProperties') == null
        ? const {}
        : ImportResult._readExtras(
            ImportResult._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ImportResultToJson(ImportResult instance) =>
    <String, dynamic>{
      'imported': ?ImportResult._write_imported(instance.imported),
      'linked': ?ImportResult._write_linked(instance.linked),
    };
