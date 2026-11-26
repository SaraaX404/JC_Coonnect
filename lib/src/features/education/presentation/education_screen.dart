import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_nav_item.dart';
import 'package:jc_connect_app/src/core/widgets/jc_panel.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/education/presentation/lesson_overview_screen.dart';
import 'package:jc_connect_app/src/features/education/presentation/widgets/education_section_header.dart';
import 'package:material_ui/material_ui.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  int term = 1;
  String query = '';

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Education',
    child: Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) => setState(() => query = value),
                      decoration: InputDecoration(
                        hintText: 'Search lessons, subjects…',
                        prefixIcon: const Icon(Icons.search, size: 18),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: JcColors.border),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.tune),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: JcColors.border),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  3,
                  (i) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: _EducationChip(
                      label: 'Term ${i + 1}',
                      selected: term == i + 1,
                      onTap: () => setState(() => term = i + 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              const EducationSectionHeader('Continue learning'),
              const SizedBox(height: 8),
              _EducationLessonCard(
                title: 'Solving quadratic equations by factorising',
                meta: 'Mathematics · Video · 8 min left',
                percent: '45%',
                onTap: () => pushScreen(context, const LessonOverviewScreen()),
              ),
              const SizedBox(height: 14),
              EducationSectionHeader(
                'My subjects · Term $term',
                action: '8 subjects ›',
              ),
              const SizedBox(height: 8),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.08,
                children: const [
                  _EducationSubjectCard(
                    title: 'Mathematics',
                    type: 'Core · 12 lessons',
                    completion: '8 of 12 done',
                    percent: 70,
                    icon: Icons.calculate_outlined,
                    tint: JcColors.tintBlue,
                  ),
                  _EducationSubjectCard(
                    title: 'English Language',
                    type: 'Core · 10 lessons',
                    completion: '4 of 10 done',
                    percent: 40,
                    icon: Icons.menu_book_outlined,
                    tint: JcColors.softYellow,
                  ),
                  _EducationSubjectCard(
                    title: 'Information Technology',
                    type: 'Elective · 9 lessons',
                    completion: '0 of 9 done',
                    percent: 0,
                    icon: Icons.desktop_windows_outlined,
                    tint: Color(0xFFE8FBEA),
                  ),
                  _EducationSubjectCard(
                    title: 'Chemistry',
                    type: 'Elective · 8 lessons',
                    completion: '8 of 8 done',
                    percent: 100,
                    icon: Icons.science_outlined,
                    tint: Color(0xFFFFEEF0),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const EducationSectionHeader('Exams', action: 'View timetable ›'),
              const SizedBox(height: 8),
              JcPanel(
                child: Row(
                  children: [
                    Container(
                      width: 46,
                      height: 54,
                      decoration: BoxDecoration(
                        color: JcColors.tintBlue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DEC',
                            style: TextStyle(
                              fontSize: 10,
                              color: JcColors.primary,
                            ),
                          ),
                          Text(
                            '9',
                            style: TextStyle(
                              fontSize: 21,
                              color: JcColors.titleBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Term 1 exam   In 4 weeks',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF87540C),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Mathematics',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '◷ Wed, Dec 9 · 9:00 AM · Ashenheim Hall',
                            style: TextStyle(
                              fontSize: 11,
                              color: JcColors.muted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: JcColors.muted),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              const EducationSectionHeader('Settings'),
              const SizedBox(height: 8),
              const JcPanel(
                child: Column(
                  children: [
                    _EducationSettingRow(
                      icon: Icons.school_outlined,
                      title: 'Grade',
                      detail: 'Grade 10 · from your profile',
                      action: 'Change',
                    ),
                    Divider(height: 16),
                    _EducationSettingRow(
                      icon: Icons.menu_book_outlined,
                      title: 'My subjects',
                      detail: '6 subjects',
                      action: 'Edit',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const _EducationBottomNav(),
      ],
    ),
  );
}

class _EducationChip extends StatelessWidget {
  const _EducationChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });
  final String label;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(24),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? JcColors.softBlue : Colors.white,
        border: Border.all(
          color: selected ? JcColors.primary : JcColors.border,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        '${selected ? '✓  ' : ''}$label',
        style: TextStyle(
          fontSize: 12,
          color: selected ? JcColors.primary : JcColors.text,
        ),
      ),
    ),
  );
}

class _EducationLessonCard extends StatelessWidget {
  const _EducationLessonCard({
    required this.title,
    required this.meta,
    required this.percent,
    required this.onTap,
  });
  final String title, meta, percent;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(12),
    child: JcPanel(
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: JcColors.tintBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.videocam_outlined,
              color: JcColors.primary,
              size: 20,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(meta, style: JcTextStyles.small),
                const SizedBox(height: 4),
                const LinearProgressIndicator(value: .45, minHeight: 4),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            percent,
            style: const TextStyle(fontSize: 10, color: JcColors.primary),
          ),
        ],
      ),
    ),
  );
}

class _EducationSubjectCard extends StatelessWidget {
  const _EducationSubjectCard({
    required this.title,
    required this.type,
    required this.completion,
    required this.percent,
    required this.icon,
    required this.tint,
  });
  final String title, type, completion;
  final int percent;
  final IconData icon;
  final Color tint;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: JcColors.border),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: tint,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 18, color: JcColors.primary),
        ),
        const SizedBox(height: 7),
        Text(
          title,
          maxLines: 2,
          style: const TextStyle(
            fontSize: 12,
            height: 1.15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(type, style: const TextStyle(fontSize: 10, color: JcColors.muted)),
        const Spacer(),
        LinearProgressIndicator(value: percent / 100, minHeight: 4),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: Text(
                completion,
                style: const TextStyle(fontSize: 9, color: JcColors.muted),
              ),
            ),
            Text(
              '$percent%',
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    ),
  );
}

class _EducationSettingRow extends StatelessWidget {
  const _EducationSettingRow({
    required this.icon,
    required this.title,
    required this.detail,
    required this.action,
  });
  final IconData icon;
  final String title, detail, action;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, color: JcColors.primary, size: 20),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            Text(detail, style: JcTextStyles.small),
          ],
        ),
      ),
      OutlinedButton(onPressed: () {}, child: Text(action)),
    ],
  );
}

class _EducationBottomNav extends StatelessWidget {
  const _EducationBottomNav();
  @override
  Widget build(BuildContext context) => Container(
    height: 64,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(top: BorderSide(color: JcColors.border)),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        JcNavItem(icon: Icons.rss_feed_outlined, label: 'Feed'),
        JcNavItem(icon: Icons.chat_bubble_outline, label: 'Chat'),
        JcNavItem(icon: Icons.home_filled, label: 'Home', selected: true),
        JcNavItem(icon: Icons.emoji_events_outlined, label: 'Sport'),
        JcNavItem(icon: Icons.person_outline, label: 'Profile'),
      ],
    ),
  );
}
