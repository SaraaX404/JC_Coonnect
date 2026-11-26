import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:material_ui/material_ui.dart';

class JcRoleOption extends StatelessWidget {
  const JcRoleOption({
    super.key,
    required this.role,
    required this.selected,
    required this.onTap,
  });
  final JcRole role;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(12),
    child: Container(
      height: 78,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: selected ? JcColors.primary : JcColors.border,
          width: selected ? 1.5 : 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: JcColors.softBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(role.icon, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  role.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(role.subtitle, style: JcTextStyles.small),
              ],
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: selected ? JcColors.primary : JcColors.border,
                width: 1.5,
              ),
              color: selected ? JcColors.primary : Colors.white,
            ),
            child: selected
                ? const Icon(Icons.check, size: 13, color: Colors.white)
                : null,
          ),
        ],
      ),
    ),
  );
}
