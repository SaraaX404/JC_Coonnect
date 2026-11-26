import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcDivider extends StatelessWidget {
  const JcDivider({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      const Expanded(child: Divider(color: Color(0xFFEFEFEF))),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(label, style: JcTextStyles.small),
      ),
      const Expanded(child: Divider(color: Color(0xFFEFEFEF))),
    ],
  );
}
