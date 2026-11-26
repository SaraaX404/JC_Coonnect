import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// For an account in several schools; pops the chosen school's id.
/// Not in Figma: a plain list until there is a design.
class SchoolPickerSheet extends StatelessWidget {
  const SchoolPickerSheet({super.key, required this.schools});
  final List<SchoolChoice> schools;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            context.l10n.loginChooseSchool,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        for (final school in schools)
          ListTile(
            title: Text(school.name),
            trailing: const Icon(Icons.chevron_right, color: JcColors.muted),
            onTap: () => Navigator.pop(context, school.id),
          ),
      ],
    ),
  );
}
