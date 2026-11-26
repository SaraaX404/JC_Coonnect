import 'package:flutter_svg/flutter_svg.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:material_ui/material_ui.dart';

class JcScaffold extends StatelessWidget {
  const JcScaffold({
    super.key,
    required this.child,
    this.title,
    this.showBack = true,
    this.background = const JcBackgroundGlows(),
  });
  final Widget child;
  final String? title;
  final bool showBack;

  /// Decoration behind the content; the blue and amber glows by default.
  final Widget background;

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: Stack(
      children: [
        Positioned.fill(child: background),
        SafeArea(
          top: false,
          child: Column(
            children: [
              JcAppHeader(title: title, showBack: showBack),
              Expanded(child: child),
            ],
          ),
        ),
      ],
    ),
  );
}

/// Figma "Background Glow 1/2": 372px radial glows at the top corners.
class JcBackgroundGlows extends StatelessWidget {
  const JcBackgroundGlows({super.key});

  @override
  Widget build(BuildContext context) => Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(
        left: -93,
        top: -146,
        child: SvgPicture.asset(
          'assets/backgrounds/login_glow_1.svg',
          width: 372,
          height: 372,
        ),
      ),
      Positioned(
        right: -172,
        top: -146,
        child: SvgPicture.asset(
          'assets/backgrounds/login_glow_2.svg',
          width: 372,
          height: 372,
        ),
      ),
    ],
  );
}

class JcAppHeader extends StatelessWidget {
  const JcAppHeader({super.key, this.title, this.showBack = true});
  final String? title;
  final bool showBack;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      SizedBox(height: MediaQuery.paddingOf(context).top),
      if (showBack || title != null)
        SizedBox(
          height: 36,
          child: Row(
            children: [
              if (showBack)
                IconButton(
                  tooltip: context.l10n.commonBack,
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: const Icon(Icons.arrow_back, size: 22),
                ),
              if (title != null)
                Expanded(
                  child: Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              if (showBack) const SizedBox(width: 48),
            ],
          ),
        ),
    ],
  );
}
