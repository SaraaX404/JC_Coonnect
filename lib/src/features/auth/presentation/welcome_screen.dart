import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// Figma: Start-up / "Welcome / Default".
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) => JcScaffold(
    showBack: false,
    background: const _WelcomeGlows(),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 32),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const JcLogo(width: 70.175),
                  const SizedBox(height: 32),
                  Text(
                    context.l10n.commonBrand,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.title.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.l10n.commonTagline,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.body,
                  ),
                ],
              ),
            ),
          ),
          JcButton(
            label: context.l10n.welcomeLoginButton,
            onPressed: () => context.push(Routes.login),
          ),
          const SizedBox(height: 16),
          JcButton(
            label: context.l10n.welcomeJoinButton,
            outlined: true,
            onPressed: () => context.push(Routes.signUp),
          ),
          const SizedBox(height: 32),
          _FooterLine(
            leading: SvgPicture.asset(
              'assets/icons/footer_icon.svg',
              width: 11.667,
              height: 11.667,
            ),
            gap: 8,
            text: context.l10n.welcomeFooter,
          ),
          const SizedBox(height: 4),
          _FooterLine(
            leading: const DecoratedBox(
              decoration: BoxDecoration(
                color: JcColors.gold,
                shape: BoxShape.circle,
              ),
              child: SizedBox.square(dimension: 6),
            ),
            gap: 6,
            text: context.l10n.welcomeVersion,
          ),
        ],
      ),
    ),
  );
}

class _FooterLine extends StatelessWidget {
  const _FooterLine({
    required this.leading,
    required this.gap,
    required this.text,
  });
  final Widget leading;
  final double gap;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      leading,
      SizedBox(width: gap),
      Flexible(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: JcTextStyles.small.copyWith(height: 16 / 12),
        ),
      ),
    ],
  );
}

/// Figma "Welcome / Default" glows: two large rotated, skewed ellipses,
/// blue top-left and amber lower-right.
class _WelcomeGlows extends StatelessWidget {
  const _WelcomeGlows();

  static double _radians(double degrees) => degrees * math.pi / 180;

  Widget _glow(String asset) => SizedBox(
    width: 743.023,
    height: 810.712,
    child: Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(_radians(33.83))
          ..multiply(Matrix4.skewX(_radians(4.45))),
        child: SvgPicture.asset(asset, width: 554.109, height: 576.345),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -349,
          top: -176,
          child: _glow('assets/backgrounds/welcome_glow_1.svg'),
        ),
        Positioned(
          left: width * 0.25 + 13.06,
          top: 132.47,
          child: _glow('assets/backgrounds/welcome_glow_2.svg'),
        ),
      ],
    );
  }
}
