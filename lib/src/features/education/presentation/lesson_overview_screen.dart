import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_panel.dart';
import 'package:jc_connect_app/src/core/widgets/jc_pill.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/education/presentation/widgets/education_section_header.dart';
import 'package:material_ui/material_ui.dart';

class LessonOverviewScreen extends StatelessWidget {
  const LessonOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Lesson',
    child: ListView(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
      children: [
        const Row(
          children: [
            JcPill('Mathematics'),
            SizedBox(width: 6),
            JcPill('Term 1'),
            SizedBox(width: 6),
            JcPill('5 parts'),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'Solving quadratic equations by factorising',
          style: TextStyle(
            fontSize: 21,
            height: 1.3,
            color: JcColors.navyDark,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text('Mr. Williams · Updated Nov 12', style: JcTextStyles.small),
        const SizedBox(height: 14),
        const JcPanel(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Your progress',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text('2 of 5 parts', style: JcTextStyles.small),
                ],
              ),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: .4,
                minHeight: 8,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Auto-completes when you finish all parts',
                      style: JcTextStyles.small,
                    ),
                  ),
                  Text(
                    '40%',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const EducationSectionHeader('Lesson content'),
        const SizedBox(height: 8),
        const _LessonPart(
          icon: Icons.videocam_outlined,
          title: 'Factorising basics — watch first',
          meta: 'Video · 11 min',
          done: true,
        ),
        const SizedBox(height: 10),
        const _LessonPart(
          icon: Icons.article_outlined,
          title: 'Key terms and rules',
          meta: 'Article · 5 min read',
          done: true,
        ),
        const SizedBox(height: 10),
        const _LessonPart(
          icon: Icons.image_outlined,
          title: 'Worked example diagrams',
          meta: 'Images · 3 of 8 viewed',
          progress: '45%',
        ),
        const SizedBox(height: 10),
        const _LessonPart(
          icon: Icons.headphones_outlined,
          title: 'Teacher’s audio recap',
          meta: 'Audio · 6 min',
        ),
        const SizedBox(height: 12),
        const Text(
          'About this lesson',
          style: TextStyle(
            color: JcColors.navyDark,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Learn to solve quadratic equations by factorising. You’ll practise spotting common factors, using the zero-product property and checking your answers.',
          style: TextStyle(color: JcColors.muted, height: 1.4),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share_outlined, size: 18),
              label: const Text('Share'),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border, size: 18),
              label: const Text('Save'),
            ),
          ],
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 48,
          child: FilledButton.icon(
            onPressed: () => showMessage(context, 'Part 3 is ready.'),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Continue · Part 3 of 5'),
            style: FilledButton.styleFrom(
              backgroundColor: JcColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class _LessonPart extends StatelessWidget {
  const _LessonPart({
    required this.icon,
    required this.title,
    required this.meta,
    this.done = false,
    this.progress,
  });
  final IconData icon;
  final String title, meta;
  final bool done;
  final String? progress;
  @override
  Widget build(BuildContext context) => JcPanel(
    child: Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: JcColors.tintBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: JcColors.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(meta, style: JcTextStyles.small),
              if (progress != null)
                const LinearProgressIndicator(value: .45, minHeight: 4),
            ],
          ),
        ),
        done
            ? const Icon(Icons.check_circle_outline, color: Colors.green)
            : Text(
                progress ?? '›',
                style: const TextStyle(color: JcColors.primary),
              ),
      ],
    ),
  );
}
