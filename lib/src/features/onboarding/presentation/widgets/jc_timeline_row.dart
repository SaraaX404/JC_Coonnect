import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcTimelineRow extends StatelessWidget {
  const JcTimelineRow({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.meta,
    required this.badge,
    this.last = false,
  });
  final IconData icon;
  final Color color;
  final String title;
  final String meta;
  final String badge;
  final bool last;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: color.withAlpha(25),
              child: Icon(icon, color: color, size: 16),
            ),
            if (!last)
              Container(width: 2, height: 24, color: color.withAlpha(90)),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: color.withAlpha(20),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        badge,
                        style: TextStyle(
                          fontSize: 11,
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(meta, style: JcTextStyles.small),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
