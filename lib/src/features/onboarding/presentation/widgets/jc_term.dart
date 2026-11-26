import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcTerm extends StatelessWidget {
  const JcTerm({
    super.key,
    required this.number,
    required this.title,
    required this.body,
  });
  final String number;
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: JcColors.softBlue,
              child: Text(
                number,
                style: const TextStyle(fontSize: 10, color: JcColors.primary),
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(title, style: const TextStyle(fontSize: 12)),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          body,
          style: const TextStyle(
            fontSize: 10,
            height: 1.25,
            color: JcColors.muted,
          ),
        ),
      ],
    ),
  );
}
