import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// App-wide Material theme. Inter is bundled in pubspec.yaml.
ThemeData jcTheme() => ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Inter',
  colorScheme: ColorScheme.fromSeed(seedColor: JcColors.primary),
);
