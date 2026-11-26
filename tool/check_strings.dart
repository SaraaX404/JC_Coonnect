// Fails on user-facing string literals outside the ARB files (CLAUDE.md "Localisation").
// Run: fvm dart run tool/check_strings.dart
import 'dart:io';

/// A non-empty string literal as the first argument of a text widget, or as the
/// value of a named argument that is shown or spoken to the user.
final _patterns = [
  RegExp(
    r'''\b(?:Text|SelectableText|TextSpan)\(\s*(?:text:\s*)?(['"])(?!\1)''',
  ),
  RegExp(
    r'''\b(?:hintText|labelText|helperText|errorText|counterText|prefixText|suffixText|'''
    r'''tooltip|semanticLabel|semanticsLabel|label|title|message|placeholder)\s*:\s*(['"])(?!\1)''',
  ),
];

void main() {
  final problems = <String>[];
  for (final file in _sources(['lib'])) {
    final source = file.readAsStringSync();
    for (final pattern in _patterns) {
      for (final match in pattern.allMatches(source)) {
        if (!_hasWords(source, match.end - 1)) continue;
        final line =
            '\n'.allMatches(source.substring(0, match.start)).length + 1;
        problems.add('${file.path}:$line: ${match.group(0)!.trim()}');
      }
    }
  }
  if (problems.isEmpty) {
    stdout.writeln('check_strings: ok');
    return;
  }
  stderr
    ..writeln(
      'Hard-coded user-facing strings. Put them in lib/l10n/app_en.arb:',
    )
    ..writeln(problems.join('\n'));
  exitCode = 1;
}

/// Whether the literal that starts with the quote at [quoteIndex] has words
/// of its own. Separators (" · ") and interpolated values are fine.
bool _hasWords(String source, int quoteIndex) {
  final quote = source[quoteIndex];
  var end = quoteIndex + 1;
  while (end < source.length && source[end] != quote) {
    end += source[end] == r'\' ? 2 : 1;
  }
  final literal = source
      .substring(quoteIndex + 1, end.clamp(0, source.length))
      .replaceAll(RegExp(r'\$\{[^}]*\}'), '')
      .replaceAll(RegExp(r'\$\w+'), '');
  // A single character is a glyph or an initial, not copy (the Google "G").
  return literal.runes.length > 1 &&
      RegExp(r'\p{L}', unicode: true).hasMatch(literal);
}

Iterable<File> _sources(List<String> roots) sync* {
  for (final root in roots) {
    final dir = Directory(root);
    if (!dir.existsSync()) continue;
    for (final entity in dir.listSync(recursive: true)) {
      final path = entity.path;
      if (entity is! File || !path.endsWith('.dart')) continue;

      if (path.contains('/l10n/generated/')) continue;
      // Demo content until the backend serves it; not translated on purpose.
      if (path.contains('/data/mock_')) continue;
      yield entity;
    }
  }
}
