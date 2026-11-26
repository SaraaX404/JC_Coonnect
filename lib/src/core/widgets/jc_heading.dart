import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class JcHeading extends StatelessWidget {
  const JcHeading({
    super.key,
    required this.title,
    required this.description,
    this.align = TextAlign.left,
  });
  final String title;
  final String description;
  final TextAlign align;
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: align == TextAlign.left
        ? CrossAxisAlignment.start
        : CrossAxisAlignment.center,
    children: [
      Text(title, style: JcTextStyles.title, textAlign: align),
      const SizedBox(height: 4),
      Text(description, style: JcTextStyles.body, textAlign: align),
    ],
  );
}
