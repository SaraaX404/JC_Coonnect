import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcSummaryCard extends StatelessWidget {
  const JcSummaryCard({super.key, required this.title, required this.values});
  final String title;
  final Map<String, String> values;
  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: JcColors.border),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const Text(
                'Edit',
                style: TextStyle(fontSize: 12, color: JcColors.primary),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...values.entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Expanded(child: Text(entry.key, style: JcTextStyles.small)),
                  Text(
                    entry.value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
