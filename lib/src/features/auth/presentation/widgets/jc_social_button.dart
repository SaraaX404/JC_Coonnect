import 'package:flutter_svg/flutter_svg.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// Figma "Social Button": 52 high, #EFEFEF border, icon + label + down arrow.
class JcSocialButton extends StatelessWidget {
  const JcSocialButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });
  final String label;
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 52,
    width: double.infinity,
    child: OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: JcColors.text,
        side: const BorderSide(color: JcColors.divider),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                height: 1,
                fontWeight: FontWeight.w500,
                color: JcColors.text,
              ),
            ),
          ),
          const SizedBox(width: 12),
          RotatedBox(
            quarterTurns: 1,
            child: SvgPicture.asset(
              'assets/icons/arrow_right_small.svg',
              width: 16,
              height: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
