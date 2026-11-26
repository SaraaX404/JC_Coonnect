// Writes a copy of the backend schema that swagger_parser maps to the right
// Dart types. api/openapi.yaml stays an exact copy of the backend's file; this
// only rewrites drf-spectacular's OpenAPI 3.0 idioms into their 3.1 form
// (taken from tailcare-mobile):
//
// - `{allOf: [$ref X], readOnly | default}`  -> `{$ref: X, default}`
//   (3.0 can't put siblings next to $ref; the generator turns allOf into a
//   lossy wrapper class instead of X).
// - `{allOf: [$ref X], nullable: true}`      -> `{anyOf: [$ref X, {type: null}]}`
// - `{oneOf: [$ref X, $ref NullEnum], nullable: true}` -> the same anyOf
//   (NullEnum is `enum: [null]`, which the generator rejects).
// - `{type: T, nullable: true}`              -> `{type: [T, null]}`
// - `readOnly` is dropped: drf-spectacular already emits separate `*Request`
//   schemas, and the flag only made the generator rename every response model
//   to `X$Response`.
//
// JSC specifics:
// - The `X-Client` header parameter is dropped: dioProvider sends it on every
//   request, so no generated method should ask for it.
// - Operation ids lose their `api_v1_` prefix (`authLoginCreate`, not
//   `apiV1AuthLoginCreate`).
//
// Usage: dart run tool/normalize_openapi.dart <in.yaml> <out.json>
import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const _nullEnum = '#/components/schemas/NullEnum';
const _null = {'type': 'null'};

void main(List<String> args) {
  final schema =
      _plain(loadYaml(File(args[0]).readAsStringSync()))!
          as Map<String, Object?>;
  ((schema['components']! as Map<String, Object?>)['schemas']!
          as Map<String, Object?>)
      .remove('NullEnum');
  _jscSpecifics(schema['paths']! as Map<String, Object?>);
  final normalized = _normalize(schema)! as Map<String, Object?>;
  normalized['openapi'] = '3.1.0';
  final json = jsonEncode(normalized);
  if (json.contains(_nullEnum) || json.contains('"nullable"')) {
    throw StateError(
      'A nullable shape was left unconverted; extend the normalizer.',
    );
  }
  File(args[1]).writeAsStringSync(json);
}

Object? _normalize(Object? node) {
  if (node is List) return node.map(_normalize).toList();
  if (node is! Map<String, Object?>) return node;
  final map = {for (final e in node.entries) e.key: _normalize(e.value)}
    ..remove('readOnly');
  final nullable = map.remove('nullable') == true;

  final allOf = map['allOf'];
  if (allOf is List && allOf.length == 1 && _isRef(allOf.single)) {
    map.remove('allOf');
    if (!nullable) return {...map, ...(allOf.single! as Map<String, Object?>)};
    return {
      ...map,
      'anyOf': [allOf.single, _null],
    };
  }

  final oneOf = map['oneOf'];
  if (nullable && oneOf is List && oneOf.any((e) => _refOf(e) == _nullEnum)) {
    map.remove('oneOf');
    return {
      ...map,
      'anyOf': [...oneOf.where((e) => _refOf(e) != _nullEnum), _null],
    };
  }

  final type = map['type'];
  if (nullable && type is String)
    return {
      ...map,
      'type': [type, 'null'],
    };
  // `nullable` with no type is an untyped value: already allows null in 3.1.
  return map;
}

void _jscSpecifics(Map<String, Object?> paths) {
  for (final operations in paths.values.cast<Map<String, Object?>>()) {
    for (final operation in operations.values) {
      if (operation is! Map<String, Object?>) continue;
      if (operation['operationId'] case final String id) {
        operation['operationId'] = id.replaceFirst('api_v1_', '');
      }
      if (operation['parameters'] case final List<Object?> parameters) {
        parameters.removeWhere(
          (p) => p is Map<String, Object?> && p['name'] == 'X-Client',
        );
        if (parameters.isEmpty) operation.remove('parameters');
      }
    }
  }
}

bool _isRef(Object? node) =>
    node is Map<String, Object?> &&
    node.length == 1 &&
    node.containsKey(r'$ref');

String? _refOf(Object? node) =>
    node is Map<String, Object?> ? node[r'$ref'] as String? : null;

/// YamlMap/YamlList to plain Dart maps and lists.
Object? _plain(Object? node) => switch (node) {
  YamlMap() => {
    for (final e in node.entries) e.key.toString(): _plain(e.value),
  },
  YamlList() => [for (final e in node) _plain(e)],
  _ => node,
};
