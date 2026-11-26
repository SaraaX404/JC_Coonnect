import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcNavItem extends StatelessWidget {
  const JcNavItem({
    super.key,
    required this.icon,
    required this.label,
    this.selected = false,
  });
  final IconData icon;
  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 56,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: selected ? 42 : 24,
          height: selected ? 42 : 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? JcColors.primary : Colors.transparent,
            shape: BoxShape.circle,
            boxShadow: selected
                ? const [BoxShadow(color: Color(0x332D8CFF), blurRadius: 7)]
                : null,
          ),
          child: Icon(
            icon,
            size: selected ? 22 : 19,
            color: selected ? Colors.white : JcColors.muted,
          ),
        ),
        if (!selected)
          Text(
            label,
            style: const TextStyle(fontSize: 10, color: JcColors.muted),
          ),
      ],
    ),
  );
}
