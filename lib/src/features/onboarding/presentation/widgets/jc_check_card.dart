import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcCheckCard extends StatelessWidget {
  const JcCheckCard({
    super.key,
    required this.title,
    required this.description,
    required this.value,
    required this.onChanged,
  });
  final String title;
  final String description;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => onChanged(!value),
    borderRadius: BorderRadius.circular(12),
    child: Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (v) => onChanged(v ?? false),
            visualDensity: VisualDensity.compact,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14)),
                Text(
                  description,
                  style: JcTextStyles.body.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
