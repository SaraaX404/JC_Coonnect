import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

abstract final class JcTextStyles {
  static const title = TextStyle(
    fontSize: 30,
    height: 1,
    fontWeight: FontWeight.w600,
    color: JcColors.titleBlue,
  );
  static const body = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: JcColors.muted,
  );
  static const label = TextStyle(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w500,
    color: JcColors.text,
  );
  static const small = TextStyle(
    fontSize: 12,
    height: 1.33,
    color: JcColors.muted,
  );
}
