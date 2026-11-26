import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:material_ui/material_ui.dart';

class RoleDetailsScaffold extends StatelessWidget {
  const RoleDetailsScaffold({
    super.key,
    required this.progress,
    required this.label,
    required this.title,
    required this.description,
    required this.children,
    required this.onContinue,
    this.total = 5,
    this.enabled = true,
  });
  final int progress;
  final int total;
  final String label;
  final String title;
  final String description;
  final List<Widget> children;
  final VoidCallback onContinue;
  final bool enabled;

  @override
  Widget build(BuildContext context) => JcScaffold(
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        JcProgress(step: progress, total: total, label: label),
        const SizedBox(height: 24),
        JcHeading(title: title, description: description),
        const SizedBox(height: 24),
        ...children.expand((child) => [child, const SizedBox(height: 12)]),
        const SizedBox(height: 12),
        JcButton(label: 'Continue', enabled: enabled, onPressed: onContinue),
      ],
    ),
  );
}
