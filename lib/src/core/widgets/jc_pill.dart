import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcPill extends StatelessWidget {
  const JcPill(this.label, {super.key});
  final String label;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: JcColors.pillBlue,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: const TextStyle(fontSize: 10, color: JcColors.navy),
    ),
  );
}
