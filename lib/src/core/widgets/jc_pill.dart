import 'package:material_ui/material_ui.dart';

class JcPill extends StatelessWidget {
  const JcPill(this.label, {super.key});
  final String label;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: const Color(0xFFEBF1FF),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: const TextStyle(fontSize: 10, color: Color(0xFF0033A0)),
    ),
  );
}
