import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/features/education/data/mock_education.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_panel.dart';
import 'package:jc_connect_app/src/core/widgets/jc_pill.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/education/presentation/widgets/education_section_header.dart';
import 'package:material_ui/material_ui.dart';

class LessonOverviewScreen extends StatelessWidget {
  const LessonOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: context.l10n.lessonTitle,
    child: ListView(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
      children: [
        const Row(
          children: [
            JcPill(mockSubjectMathematics),
            SizedBox(width: 6),
            JcPill(mockLessonTerm),
            SizedBox(width: 6),
            JcPill(mockLessonParts),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          mockLessonTitle,
          style: TextStyle(
            fontSize: 21,
            height: 1.3,
            color: JcColors.navyDark,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(mockLessonAuthor, style: JcTextStyles.small),
        const SizedBox(height: 14),
        JcPanel(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.l10n.lessonYourProgress,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Text(mockLessonProgress, style: JcTextStyles.small),
                ],
              ),
              const SizedBox(height: 8),
              const LinearProgressIndicator(
                value: .4,
                minHeight: 8,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.l10n.lessonAutoCompletes,
                      style: JcTextStyles.small,
                    ),
                  ),
                  const Text(
                    '40%',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        EducationSectionHeader(context.l10n.lessonContent),
        const SizedBox(height: 8),
        const _LessonPart(
          icon: Icons.videocam_outlined,
          title: mockLessonPart1,
          meta: mockLessonPart1Meta,
          done: true,
        ),
        const SizedBox(height: 10),
        const _LessonPart(
          icon: Icons.article_outlined,
          title: mockLessonPart2,
          meta: mockLessonPart2Meta,
          done: true,
        ),
        const SizedBox(height: 10),
        const _LessonPart(
          icon: Icons.image_outlined,
          title: mockLessonPart3,
          meta: mockLessonPart3Meta,
          progress: '45%',
        ),
        const SizedBox(height: 10),
        const _LessonPart(
          icon: Icons.headphones_outlined,
          title: mockLessonPart4,
          meta: mockLessonPart4Meta,
        ),
        const SizedBox(height: 12),
        Text(
          context.l10n.lessonAbout,
          style: const TextStyle(
            color: JcColors.navyDark,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          mockLessonAbout,
          style: TextStyle(color: JcColors.muted, height: 1.4),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share_outlined, size: 18),
              label: Text(context.l10n.commonShare),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border, size: 18),
              label: Text(context.l10n.commonSave),
            ),
          ],
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 48,
          child: FilledButton.icon(
            onPressed: () => showMessage(context, mockLessonNextPartMessage),
            icon: const Icon(Icons.play_arrow),
            label: const Text(mockLessonContinueLabel),
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
