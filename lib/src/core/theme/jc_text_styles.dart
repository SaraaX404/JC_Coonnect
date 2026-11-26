import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

abstract final class JcTextStyles {
  /// Font families bundled in pubspec.yaml. Inter is the app default (theme).
  static const brandFont = 'BarlowCondensed';

  /// Page headings ("JC CONNECT", "Verify your identity"): Barlow Condensed.
  static const title = TextStyle(
    fontFamily: brandFont,
    fontSize: 30,
    height: 1,
    fontWeight: FontWeight.w500,
    color: JcColors.titleBlue,
  );
  static const body = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: JcColors.muted,
  );
  static const label = TextStyle(
    fontSize: 14,
    height: 1,
    fontWeight: FontWeight.w500,
    color: JcColors.text,
  );

  /// Field value, placeholder, helper and error text (14/20).
  static const input = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    color: JcColors.text,
  );
  static const small = TextStyle(
    fontSize: 12,
    height: 1.33,
    color: JcColors.muted,
  );

  /// "Jamaica College • True Blue Secure Access" (Public Sans Medium).
  static const secureFooter = TextStyle(
    fontFamily: 'PublicSans',
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFF94A3B8),
  );
}
