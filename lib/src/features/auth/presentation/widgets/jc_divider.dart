import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcDivider extends StatelessWidget {
  const JcDivider({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      const Expanded(child: Divider(color: JcColors.divider, height: 1)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            height: 20 / 12,
            color: JcColors.subtleText,
          ),
        ),
      ),
      const Expanded(child: Divider(color: JcColors.divider, height: 1)),
    ],
  );
}
