import 'package:flutter_svg/flutter_svg.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// Figma "Button": 48 high, radius 12, Inter Medium 16, trailing icon.
/// Filled shows an arrow, outlined (navy) shows a chevron.
class JcButton extends StatelessWidget {
  const JcButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.outlined = false,
    this.enabled = true,
  });
  final String label;
  final VoidCallback onPressed;
  final bool outlined;
  final bool enabled;

  static const _shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
  static const _padding = EdgeInsets.symmetric(horizontal: 32, vertical: 12);
  static const _labelStyle = TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    final content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Text(label, style: _labelStyle)),
        const SizedBox(width: 6),
        SvgPicture.asset(
          outlined
              ? 'assets/icons/chevron_right.svg'
              : 'assets/icons/arrow_right.svg',
          width: 16,
          height: 16,
        ),
      ],
    );
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: JcColors.shadow,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: SizedBox(
        height: 48,
        width: double.infinity,
        child: outlined
            ? OutlinedButton(
                onPressed: enabled ? onPressed : null,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: JcColors.navy,
                  side: const BorderSide(color: JcColors.navy),
                  padding: _padding,
                  shape: _shape,
                ),
                child: content,
              )
            : FilledButton(
                onPressed: enabled ? onPressed : null,
                style: FilledButton.styleFrom(
                  backgroundColor: JcColors.primary,
                  // Figma disabled button: the primary button at 50% opacity.
                  disabledBackgroundColor: JcColors.primary.withValues(
                    alpha: 0.5,
                  ),
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.white,
                  padding: _padding,
                  shape: _shape,
                ),
                child: content,
              ),
      ),
    );
  }
}
