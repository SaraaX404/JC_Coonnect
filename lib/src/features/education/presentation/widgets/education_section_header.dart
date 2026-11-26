import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class EducationSectionHeader extends StatelessWidget {
  const EducationSectionHeader(this.title, {super.key, this.action});
  final String title;
  final String? action;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Container(
        width: 5,
        height: 16,
        decoration: BoxDecoration(
          color: JcColors.navy,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      const SizedBox(width: 6),
      Expanded(
        child: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      if (action case final action?)
        Text(
          action,
          style: const TextStyle(fontSize: 11, color: JcColors.navy),
        ),
    ],
  );
}
