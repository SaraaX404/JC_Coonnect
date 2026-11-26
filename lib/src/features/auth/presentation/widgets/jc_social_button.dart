import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

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
        side: const BorderSide(color: Color(0xFFEFEFEF)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(label),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, size: 16),
        ],
      ),
    ),
  );
}
