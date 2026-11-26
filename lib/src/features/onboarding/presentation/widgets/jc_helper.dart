import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcHelper extends StatelessWidget {
  const JcHelper(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) => Text(text, style: JcTextStyles.small);
}
