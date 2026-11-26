import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

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
  @override
  Widget build(BuildContext context) => SizedBox(
    height: 48,
    width: double.infinity,
    child: outlined
        ? OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              foregroundColor: JcColors.titleBlue,
              side: const BorderSide(color: JcColors.titleBlue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(label),
          )
        : FilledButton(
            onPressed: enabled ? onPressed : null,
            style: FilledButton.styleFrom(
              backgroundColor: JcColors.primary,
              disabledBackgroundColor: const Color(0xFF7DB5F7),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 6),
                const Icon(Icons.arrow_forward, size: 16),
              ],
            ),
          ),
  );
}
