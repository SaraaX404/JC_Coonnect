import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:material_ui/material_ui.dart';

class JcFileField extends StatelessWidget {
  const JcFileField({super.key, this.selected = false, this.onChanged});
  final bool selected;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(context.l10n.commonProofOfAttendance, style: JcTextStyles.label),
      const SizedBox(height: 6),
      InkWell(
        onTap: () {
          onChanged?.call(true);
          showMessage(context, context.l10n.fileFieldMarkedMessage);
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: JcColors.border),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.upload_file_outlined,
                size: 18,
                color: JcColors.text,
              ),
              const SizedBox(width: 8),
              Text(
                context.l10n.fileFieldUpload,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                selected
                    ? context.l10n.fileFieldSelected
                    : context.l10n.fileFieldNoFile,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 4),
      Text(context.l10n.fileFieldHelp, style: JcTextStyles.small),
    ],
  );
}
