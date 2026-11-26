import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcScaffold extends StatelessWidget {
  const JcScaffold({
    super.key,
    required this.child,
    this.title,
    this.showBack = true,
    this.showHomeIndicator = true,
  });
  final Widget child;
  final String? title;
  final bool showBack;
  final bool showHomeIndicator;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: [
        const Positioned.fill(
          child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
        ),
        Positioned(
          left: -90,
          top: -146,
          child: Container(
            width: 372,
            height: 372,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [Color(0xFFE7F0FF), Colors.white],
              ),
            ),
          ),
        ),
        Positioned(
          right: -200,
          top: -146,
          child: Container(
            width: 372,
            height: 372,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [JcColors.softYellow, Colors.white],
              ),
            ),
          ),
        ),
        SafeArea(
          top: false,
          bottom: false,
          child: Column(
            children: [
              JcAppHeader(title: title, showBack: showBack),
              Expanded(child: child),
            ],
          ),
        ),
        if (showHomeIndicator)
          const Align(
            alignment: Alignment.bottomCenter,
            child: JcHomeIndicator(),
          ),
      ],
    ),
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
      SizedBox(
        height: 36,
        child: Row(
          children: [
            if (showBack)
              IconButton(
                tooltip: 'Back',
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

class JcHomeIndicator extends StatelessWidget {
  const JcHomeIndicator({super.key});
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Container(
      width: 144,
      height: 5,
      decoration: BoxDecoration(
        color: const Color(0xFF292929),
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  );
}
