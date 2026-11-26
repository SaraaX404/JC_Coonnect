import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcProgress extends StatelessWidget {
  const JcProgress({
    super.key,
    required this.step,
    required this.label,
    this.total = 5,
  });
  final int step;
  final int total;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Step $step of $total', style: JcTextStyles.small),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: JcColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            total,
            (index) => Expanded(
              child: Container(
                height: 4,
                margin: EdgeInsets.only(right: index == total - 1 ? 0 : 6),
                decoration: BoxDecoration(
                  color: index < step
                      ? JcColors.primary
                      : const Color(0xFFF1F5F9),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
