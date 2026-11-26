import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

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
  });
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? trailing;
  final String? helper;
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: JcTextStyles.label),
      const SizedBox(height: 6),
      SizedBox(
        height: 40,
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: JcColors.muted, fontSize: 14),
            suffixIcon: trailing,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: JcColors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: JcColors.border),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
      if (helper != null)
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(helper!, style: JcTextStyles.small),
        ),
    ],
  );
}
