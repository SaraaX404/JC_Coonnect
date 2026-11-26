import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcAccordion extends StatefulWidget {
  const JcAccordion({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;
  @override
  State<JcAccordion> createState() => _JcAccordionState();
}

class _JcAccordionState extends State<JcAccordion> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => setState(() => expanded = !expanded),
    borderRadius: BorderRadius.circular(12),
    child: Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: JcColors.softBlue,
                child: Icon(widget.icon, color: JcColors.primary, size: 18),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(widget.subtitle, style: JcTextStyles.small),
                  ],
                ),
              ),
              Icon(
                expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              ),
            ],
          ),
          if (expanded)
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 44),
              child: Text(
                context.l10n.accordionLaterHelp,
                style: JcTextStyles.small,
              ),
            ),
        ],
      ),
    ),
  );
}
