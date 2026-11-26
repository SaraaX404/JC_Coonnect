import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcSummaryCard extends StatelessWidget {
  const JcSummaryCard({
    super.key,
    required this.title,
    required this.values,
    this.onEdit,
  });
  final String title;
  final Map<String, String> values;
  final VoidCallback? onEdit;

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
              InkWell(
                onTap: onEdit,
                child: Text(
                  context.l10n.commonEdit,
                  style: const TextStyle(fontSize: 12, color: JcColors.primary),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...values.entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Text(entry.key, style: JcTextStyles.small),
                  const SizedBox(width: 16),
                  // Long values (emails, addresses) wrap instead of overflowing.
                  Expanded(
                    child: Text(
                      entry.value,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
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
