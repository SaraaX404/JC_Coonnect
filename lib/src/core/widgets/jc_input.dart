import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

/// Figma "Input Box": label (with an optional action on the right, like
/// "Forgot your password?"), a 44-high field, then an error or helper line.
class JcInput extends StatelessWidget {
  const JcInput({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.trailing,
    this.helper,
    this.errorText,
    this.labelAction,
    this.onChanged,
  });
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? trailing;
  final String? helper;

  /// Shown in red under the field, in place of [helper].
  final String? errorText;
  final Widget? labelAction;
  final ValueChanged<String>? onChanged;

  static const _border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide(color: JcColors.border),
  );

  @override
  Widget build(BuildContext context) {
    final message = errorText ?? helper;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(label, style: JcTextStyles.label)),
            ?labelAction,
          ],
        ),
        const SizedBox(height: 6),
        DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: JcColors.shadow,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: SizedBox(
            height: 44,
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              onChanged: onChanged,
              style: JcTextStyles.input,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: JcTextStyles.input.copyWith(color: JcColors.muted),
                suffixIcon: trailing,
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 40,
                  minHeight: 40,
                ),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                border: _border,
                enabledBorder: _border,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        if (message != null) ...[
          const SizedBox(height: 8),
          Text(
            message,
            style: JcTextStyles.input.copyWith(
              color: errorText != null ? JcColors.error : JcColors.muted,
            ),
          ),
        ],
      ],
    );
  }
}
