import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:material_ui/material_ui.dart';

class JcSelect extends StatelessWidget {
  const JcSelect({
    super.key,
    required this.label,
    required this.hint,
    this.value,
    this.options = const [],
    this.onSelected,
  });
  final String label;
  final String hint;
  final String? value;
  final List<String> options;
  final ValueChanged<String>? onSelected;

  Future<void> _choose(BuildContext context) async {
    if (options.isEmpty) {
      showMessage(context, context.l10n.commonSelectField(label));
      return;
    }
    final selected = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: options
              .map(
                (option) => ListTile(
                  title: Text(option),
                  trailing: option == value
                      ? const Icon(Icons.check, color: JcColors.primary)
                      : null,
                  onTap: () => Navigator.of(context).pop(option),
                ),
              )
              .toList(),
        ),
      ),
    );
    if (selected != null) onSelected?.call(selected);
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: JcTextStyles.label),
      const SizedBox(height: 6),
      InkWell(
        onTap: () => _choose(context),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: JcColors.border),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: JcColors.shadow,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  value?.isNotEmpty == true ? value! : hint,
                  style: TextStyle(
                    fontSize: 14,
                    color: value?.isNotEmpty == true
                        ? JcColors.text
                        : JcColors.muted,
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 18,
                color: JcColors.muted,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
