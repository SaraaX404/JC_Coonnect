import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const JcConnectApp());

class JcConnectApp extends StatelessWidget {
  const JcConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JC Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: JcColors.primary),
      ),
      home: const WelcomeScreen(),
    );
  }
}

abstract final class JcColors {
  static const primary = Color(0xFF0075FF);
  static const titleBlue = Color(0xFF003CBA);
  static const text = Color(0xFF0A0A0A);
  static const muted = Color(0xFF64748B);
  static const border = Color(0xFFE2E8F0);
  static const softBlue = Color(0xFFE6F4FF);
  static const softYellow = Color(0xFFFFF8DF);
  static const green = Color(0xFF028902);
}

abstract final class JcTextStyles {
  static const title = TextStyle(
    fontSize: 30,
    height: 1,
    fontWeight: FontWeight.w600,
    color: JcColors.titleBlue,
  );
  static const body = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: JcColors.muted,
  );
  static const label = TextStyle(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w500,
    color: JcColors.text,
  );
  static const small = TextStyle(
    fontSize: 12,
    height: 1.33,
    color: JcColors.muted,
  );
}

enum JcRole { student, parent, teacher, oldBoy }

extension JcRoleLabel on JcRole {
  String get title => switch (this) {
    JcRole.student => 'Student',
    JcRole.parent => 'Parent or guardian',
    JcRole.teacher => 'Teacher or coach',
    JcRole.oldBoy => 'Old Boy',
  };

  String get subtitle => switch (this) {
    JcRole.student => 'I’m currently enrolled at JC',
    JcRole.parent => 'I have a son at JC',
    JcRole.teacher => 'I teach or coach at Jamaica College',
    JcRole.oldBoy => 'I’m a JC alumnus',
  };

  IconData get icon => switch (this) {
    JcRole.student => Icons.school_outlined,
    JcRole.parent => Icons.people_outline,
    JcRole.teacher => Icons.dashboard_outlined,
    JcRole.oldBoy => Icons.badge_outlined,
  };
}

class SignUpData {
  JcRole? role;
  String name = '';
  String email = '';
  String phone = '';
  String studentId = '';
  String grade = '';
  String className = '';
  String academicYear = '';
  String academicTrack = '';
  String dateOfBirth = '';
  String address = '';
  String relationship = '';
  String sonName = '';
  String staffId = '';
  String schoolEmail = '';
  String graduationYear = '';
  String lastGrade = '';
  String house = '';
  String teacherRole = '';
  String anotherSonName = '';
  bool proofUploaded = false;
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      showBack: false,
      child: Column(
        children: [
          const Spacer(flex: 3),
          const JcLogo(),
          const SizedBox(height: 32),
          const Text(
            'JC CONNECT',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: JcColors.titleBlue,
            ),
          ),
          const SizedBox(height: 8),
          const Text('One College. One Community.', style: JcTextStyles.body),
          const Spacer(flex: 4),
          JcButton(
            label: 'Login',
            onPressed: () => _push(context, const LoginScreen()),
          ),
          const SizedBox(height: 12),
          JcButton(
            label: 'Join as a Member',
            outlined: true,
            onPressed: () =>
                _push(context, SignUpRoleScreen(data: SignUpData())),
          ),
          const SizedBox(height: 10),
          TextButton.icon(
            onPressed: () => _push(context, const EventsScreen()),
            icon: const Icon(Icons.event_outlined, size: 18),
            label: const Text('Browse events'),
          ),
          TextButton.icon(
            onPressed: () => _push(context, const EducationScreen()),
            icon: const Icon(Icons.school_outlined, size: 18),
            label: const Text('Open Education'),
          ),
          const SizedBox(height: 32),
          const Text(
            'Jamaica College • Founded 1789 • Kingston, JA',
            style: JcTextStyles.small,
          ),
          const SizedBox(height: 4),
          const Text(
            '●  v2.4.0 • True Blue Secure Connect',
            style: JcTextStyles.small,
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }
}

class EventRecord {
  const EventRecord({
    required this.title,
    required this.category,
    required this.filterCategory,
    required this.month,
    required this.day,
    required this.date,
    required this.time,
    required this.location,
    required this.description,
    required this.going,
    this.isSport = false,
  });
  final String title;
  final String category;
  final String filterCategory;
  final String month;
  final String day;
  final String date;
  final String time;
  final String location;
  final String description;
  final String going;
  final bool isSport;
}

const _events = [
  EventRecord(
    title: 'FTC Robotics Autonomous Demo',
    category: 'Academic • STEM',
    filterCategory: 'Academic',
    month: 'NOV',
    day: '18',
    date: 'Nov 18, 2026',
    time: '10:00 AM – 1:00 PM',
    location: 'Ashenheim Annex STEM Lab',
    description:
        'See the Jamaica College robotics team demonstrate their autonomous build and meet the students behind it.',
    going: '+62 going',
    isSport: false,
  ),
  EventRecord(
    title: 'Sixth Form Career Mentorship Breakfast',
    category: 'Alumni • JCOBA',
    filterCategory: 'Alumni',
    month: 'NOV',
    day: '19',
    date: 'Nov 19, 2026',
    time: '8:00 AM – 10:30 AM',
    location: 'Karl Hendrickson Auditorium',
    description:
        'Connect with JC Old Boys working across technology, medicine, business, and the creative industries.',
    going: '+95 going',
  ),
  EventRecord(
    title: 'PTA & Teacher Consultation Meet',
    category: 'PTA • Community',
    filterCategory: 'PTA',
    month: 'NOV',
    day: '20',
    date: 'Nov 20, 2026',
    time: '5:00 PM – 7:30 PM',
    location: 'Ashenheim Hall & Main Campus',
    description:
        'A dedicated afternoon for parents and teachers to meet, share updates, and plan student support.',
    going: '+140 going',
  ),
  EventRecord(
    title: 'Annual STEM & Science Carnival',
    category: 'Academic • STEM',
    filterCategory: 'Academic',
    month: 'NOV',
    day: '21',
    date: 'Nov 21, 2026',
    time: '10:00 AM – 3:00 PM',
    location: 'JC Science Block',
    description:
        'Interactive exhibits, student experiments, and hands-on activities for the whole JC community.',
    going: '+205 going',
  ),
  EventRecord(
    title: 'True Blue Christmas Symposium',
    category: 'PTA • Community',
    filterCategory: 'PTA',
    month: 'NOV',
    day: '22',
    date: 'Nov 22, 2026',
    time: '6:00 PM – 8:00 PM',
    location: 'Manning Theatre',
    description:
        'An evening of reflection, music, and community conversations before the Christmas break.',
    going: '+74 going',
  ),
  EventRecord(
    title: 'True Blue Football Fixture',
    category: 'Sports',
    filterCategory: 'Sports',
    month: 'NOV',
    day: '23',
    date: 'Nov 23, 2026',
    time: '2:00 PM – 5:00 PM',
    location: 'JC Playing Field',
    description:
        'Support the team from the stands as Jamaica College hosts the annual True Blue football fixture.',
    going: '+312 going',
    isSport: true,
  ),
];

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final search = TextEditingController();
  String selectedCategory = 'All';
  bool calendar = false;
  bool searchFocused = false;

  List<EventRecord> get visibleEvents {
    final query = search.text.trim().toLowerCase();
    return _events.where((event) {
      final categoryMatches =
          selectedCategory == 'All' || event.filterCategory == selectedCategory;
      final queryMatches =
          query.isEmpty ||
          event.title.toLowerCase().contains(query) ||
          event.category.toLowerCase().contains(query) ||
          event.location.toLowerCase().contains(query);
      return categoryMatches && queryMatches;
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    search.addListener(_refresh);
  }

  void _refresh() => setState(() {});

  @override
  void dispose() {
    search.removeListener(_refresh);
    search.dispose();
    super.dispose();
  }

  Future<void> _showFilters() async {
    final categories = ['All', 'Academic', 'Alumni', 'PTA', 'Sports'];
    final result = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Filter events', style: JcTextStyles.title),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ...categories.map(
                (category) => RadioListTile<String>(
                  value: category,
                  groupValue: selectedCategory,
                  title: Text(category),
                  contentPadding: EdgeInsets.zero,
                  onChanged: (value) => Navigator.pop(context, value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    if (result != null) setState(() => selectedCategory = result);
  }

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Events',
    showBack: false,
    showHomeIndicator: false,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    key: const ValueKey('event-search-input'),
                    controller: search,
                    onTap: () => setState(() => searchFocused = true),
                    decoration: InputDecoration(
                      hintText: 'Search events',
                      prefixIcon: const Icon(Icons.search, size: 18),
                      suffixIcon: search.text.isEmpty
                          ? null
                          : IconButton(
                              onPressed: search.clear,
                              icon: const Icon(Icons.close, size: 18),
                            ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(color: JcColors.border),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(color: JcColors.border),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              _EventIconButton(
                tooltip: 'Calendar view',
                icon: Icons.calendar_today_outlined,
                onPressed: () => setState(() => calendar = true),
              ),
              const SizedBox(width: 6),
              _EventIconButton(
                tooltip: 'Filter events',
                icon: Icons.tune_outlined,
                active: selectedCategory != 'All',
                onPressed: _showFilters,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 36,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            itemCount: const [
              'All',
              'Academic',
              'Alumni',
              'PTA',
              'Sports',
            ].length,
            separatorBuilder: (_, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              const categories = ['All', 'Academic', 'Alumni', 'PTA', 'Sports'];
              final category = categories[index];
              return _EventCategoryChip(
                label: category,
                selected: selectedCategory == category,
                onTap: () => setState(() => selectedCategory = category),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 17, 12, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                calendar ? 'My calendar' : 'This week',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (!calendar)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: JcColors.softBlue,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    '${visibleEvents.length} Events',
                    style: const TextStyle(
                      fontSize: 11,
                      color: JcColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: calendar
              ? _EventCalendar(events: visibleEvents)
              : _EventList(events: visibleEvents),
        ),
        const _EventsBottomNav(),
      ],
    ),
  );
}

class _EventIconButton extends StatelessWidget {
  const _EventIconButton({
    required this.tooltip,
    required this.icon,
    required this.onPressed,
    this.active = false,
  });
  final String tooltip;
  final IconData icon;
  final VoidCallback onPressed;
  final bool active;

  @override
  Widget build(BuildContext context) => Tooltip(
    message: tooltip,
    child: InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(11),
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? JcColors.softBlue : Colors.white,
          border: Border.all(color: JcColors.border),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Icon(icon, size: 18, color: JcColors.muted),
      ),
    ),
  );
}

class _EventCategoryChip extends StatelessWidget {
  const _EventCategoryChip({
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
    borderRadius: BorderRadius.circular(18),
    child: Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 13),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFE8F4FF) : Colors.white,
        border: Border.all(
          color: selected ? JcColors.primary : const Color(0xFFE3E7EE),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (selected) ...[
            const Icon(Icons.check, size: 15, color: JcColors.primary),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: selected ? JcColors.primary : JcColors.text,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}

class _EventsBottomNav extends StatelessWidget {
  const _EventsBottomNav();

  @override
  Widget build(BuildContext context) => Container(
    height: 66,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(top: BorderSide(color: JcColors.border)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _EventNavItem(icon: Icons.rss_feed_outlined, label: 'Feed'),
        _EventNavItem(icon: Icons.chat_bubble_outline, label: 'Chat'),
        _EventNavItem(icon: Icons.home_outlined, label: 'Home', selected: true),
        _EventNavItem(icon: Icons.emoji_events_outlined, label: 'Sport'),
        _EventNavItem(icon: Icons.person_outline, label: 'Profile'),
      ],
    ),
  );
}

class _EventNavItem extends StatelessWidget {
  const _EventNavItem({
    required this.icon,
    required this.label,
    this.selected = false,
  });
  final IconData icon;
  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 56,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: selected ? 42 : 24,
          height: selected ? 42 : 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? JcColors.primary : Colors.transparent,
            shape: BoxShape.circle,
            boxShadow: selected
                ? const [BoxShadow(color: Color(0x332D8CFF), blurRadius: 7)]
                : null,
          ),
          child: Icon(
            icon,
            size: selected ? 22 : 19,
            color: selected ? Colors.white : JcColors.muted,
          ),
        ),
        if (!selected)
          Text(
            label,
            style: const TextStyle(fontSize: 10, color: JcColors.muted),
          ),
      ],
    ),
  );
}

class _EventList extends StatelessWidget {
  const _EventList({required this.events});
  final List<EventRecord> events;

  @override
  Widget build(BuildContext context) => events.isEmpty
      ? const _EmptyEventsState()
      : ListView.separated(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 32),
          itemCount: events.length,
          separatorBuilder: (_, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) =>
              _FigmaEventCard(event: events[index], featured: index == 0),
        );
}

class _FigmaEventCard extends StatelessWidget {
  const _FigmaEventCard({required this.event, this.featured = false});
  final EventRecord event;
  final bool featured;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => _push(context, EventDetailScreen(event: event)),
    borderRadius: BorderRadius.circular(12),
    child: Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
      foregroundDecoration: featured
          ? const BoxDecoration(
              border: Border(
                left: BorderSide(color: JcColors.primary, width: 4),
              ),
            )
          : null,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 64,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFEAF2FF),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  event.month,
                  style: const TextStyle(
                    fontSize: 10,
                    color: JcColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  event.day,
                  style: const TextStyle(
                    fontSize: 20,
                    color: JcColors.titleBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F4FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          event.category,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            color: JcColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  event.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                _CompactEventMeta(
                  icon: Icons.schedule_outlined,
                  label: event.time,
                ),
                _CompactEventMeta(
                  icon: Icons.location_on_outlined,
                  label: event.location,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const _EventAvatarStack(),
                    const SizedBox(width: 5),
                    Text(
                      event.going,
                      style: const TextStyle(
                        fontSize: 11,
                        color: JcColors.muted,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: JcColors.primary,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Text(
                        '+ RSVP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class _CompactEventMeta extends StatelessWidget {
  const _CompactEventMeta({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, size: 13, color: JcColors.muted),
      const SizedBox(width: 4),
      Expanded(
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 11, color: JcColors.muted),
        ),
      ),
    ],
  );
}

class _EventAvatarStack extends StatelessWidget {
  const _EventAvatarStack();

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 52,
    height: 22,
    child: Stack(
      children: [
        _EventAvatar(left: 0, color: const Color(0xFFCAA18A), initial: 'K'),
        _EventAvatar(left: 14, color: const Color(0xFF425B7A), initial: 'M'),
        _EventAvatar(left: 28, color: const Color(0xFF8FBCB5), initial: 'J'),
        Positioned(
          left: 37,
          child: Container(
            width: 22,
            height: 22,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFFFC62E),
              shape: BoxShape.circle,
            ),
            child: const Text(
              '+59',
              style: TextStyle(fontSize: 7, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    ),
  );
}

class _EventAvatar extends StatelessWidget {
  const _EventAvatar({
    required this.left,
    required this.color,
    required this.initial,
  });
  final double left;
  final Color color;
  final String initial;

  @override
  Widget build(BuildContext context) => Positioned(
    left: left,
    child: Container(
      width: 22,
      height: 22,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Text(
        initial,
        style: const TextStyle(
          fontSize: 9,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}

class _EventCard extends StatelessWidget {
  const _EventCard({required this.event});
  final EventRecord event;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => _push(context, EventDetailScreen(event: event)),
    borderRadius: BorderRadius.circular(14),
    child: Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: JcColors.softBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  event.isSport
                      ? Icons.sports_soccer_outlined
                      : Icons.event_outlined,
                  color: JcColors.primary,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: JcColors.softYellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        event.category,
                        style: const TextStyle(
                          fontSize: 11,
                          color: JcColors.text,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      event.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: JcColors.muted),
            ],
          ),
          const SizedBox(height: 12),
          Text(event.description, style: JcTextStyles.small),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 6,
            children: [
              _EventMeta(
                icon: Icons.calendar_today_outlined,
                label: event.date,
              ),
              _EventMeta(icon: Icons.schedule_outlined, label: event.time),
              _EventMeta(
                icon: Icons.location_on_outlined,
                label: event.location,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class _EventMeta extends StatelessWidget {
  const _EventMeta({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: 14, color: JcColors.muted),
      const SizedBox(width: 4),
      Text(label, style: JcTextStyles.small),
    ],
  );
}

class _EmptyEventsState extends StatelessWidget {
  const _EmptyEventsState();

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.event_busy_outlined, size: 48, color: JcColors.primary),
          SizedBox(height: 16),
          Text(
            'No events found',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 6),
          Text(
            'Try another search or clear your filters to see more of the JC community calendar.',
            textAlign: TextAlign.center,
            style: JcTextStyles.body,
          ),
        ],
      ),
    ),
  );
}

class _EventCalendar extends StatefulWidget {
  const _EventCalendar({required this.events});
  final List<EventRecord> events;

  @override
  State<_EventCalendar> createState() => _EventCalendarState();
}

class _EventCalendarState extends State<_EventCalendar> {
  int selectedDay = 18;
  final days = const [
    26,
    27,
    28,
    29,
    30,
    31,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    1,
    2,
    3,
    4,
    5,
    6,
  ];

  List<EventRecord> get selectedEvents => widget.events.where((event) {
    final day = int.tryParse(
      event.date.split(' ').elementAt(1).replaceAll(',', ''),
    );
    return day == selectedDay;
  }).toList();

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.fromLTRB(12, 4, 12, 32),
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
          const Text(
            'November 2026',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
        ],
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 10),
        decoration: BoxDecoration(
          border: Border.all(color: JcColors.border),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const ['M', 'T', 'W', 'T', 'F', 'S', 'S']
                  .map(
                    (day) => SizedBox(
                      width: 34,
                      child: Center(
                        child: Text(day, style: JcTextStyles.small),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: days.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                mainAxisExtent: 42,
              ),
              itemBuilder: (context, index) {
                final day = days[index];
                final inMonth = index >= 6 && index < 36;
                final selected = inMonth && day == selectedDay;
                final hasEvent = widget.events.any(
                  (event) =>
                      int.tryParse(
                        event.date.split(' ').elementAt(1).replaceAll(',', ''),
                      ) ==
                      day,
                );
                return InkWell(
                  onTap: inMonth
                      ? () => setState(() => selectedDay = day)
                      : null,
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: selected
                              ? JcColors.primary
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '$day',
                          style: TextStyle(
                            fontSize: 13,
                            color: selected
                                ? Colors.white
                                : inMonth
                                ? JcColors.text
                                : JcColors.muted.withAlpha(100),
                            fontWeight: selected
                                ? FontWeight.w700
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                      if (hasEvent)
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: JcColors.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      Text(
        'Events on November $selectedDay',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      const SizedBox(height: 10),
      if (selectedEvents.isEmpty)
        const Text(
          'No events, sport fixtures or club meetings on this day.',
          style: JcTextStyles.body,
        )
      else
        ...selectedEvents.map(
          (event) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _EventCard(event: event),
          ),
        ),
    ],
  );
}

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({super.key, required this.event});
  final EventRecord event;

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  bool joined = false;
  int likes = 12;
  final comment = TextEditingController();
  final comments = <String>['Can’t wait to see the new robot in action.'];

  @override
  void dispose() {
    comment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Event details',
    child: ListView(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 32),
      children: [
        Container(
          height: 256,
          color: const Color(0xFFE5EAF2),
          child: const Center(
            child: Icon(
              Icons.smart_toy_outlined,
              size: 56,
              color: JcColors.titleBlue,
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -28),
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
            decoration: const BoxDecoration(
              color: Color(0xFFFCF9F8),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFC72C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '●  ${widget.event.category}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF432305),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Text(
                  widget.event.title,
                  style: const TextStyle(
                    fontSize: 24,
                    height: 1.3,
                    color: Color(0xFF002273),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                _eventInfoCard(
                  Icons.calendar_today_outlined,
                  'Date & time',
                  '${widget.event.date} · ${widget.event.time} EST',
                ),
                const SizedBox(height: 8),
                _eventInfoCard(
                  Icons.location_on_outlined,
                  'Location',
                  widget.event.location,
                ),
                const SizedBox(height: 8),
                _eventInfoCard(
                  Icons.groups_outlined,
                  'Organizer',
                  'JC Robotics Club & IEEE Student Branch',
                ),
                const SizedBox(height: 18),
                const Text(
                  'About this event',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF002273),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.event.description,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.45,
                    color: JcColors.muted,
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () =>
                      _message(context, 'Event added to your calendar.'),
                  icon: const Icon(Icons.calendar_month_outlined),
                  label: const Text('Add to Calendar'),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                    foregroundColor: const Color(0xFF0033A0),
                    side: const BorderSide(color: JcColors.border),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _eventPanel(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Are you going?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          _eventPill('● Open to All'),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: FilledButton.icon(
                          onPressed: () => setState(() => joined = !joined),
                          icon: Icon(
                            joined ? Icons.check : Icons.check,
                            size: 18,
                          ),
                          label: Text(joined ? 'You’re going' : 'Join Now'),
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFF0079D4),
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Text(
                            '👤 👤 👤 🟡',
                            style: TextStyle(fontSize: 17),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${widget.event.going} going',
                              style: JcTextStyles.small,
                            ),
                          ),
                          TextButton(
                            onPressed: () => setState(() => joined = true),
                            child: const Text('See all  ›'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                _eventPanel(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.volunteer_activism_outlined,
                            color: Color(0xFF0033A0),
                          ),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: Text(
                              'Community booster',
                              style: TextStyle(
                                color: Color(0xFF0033A0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text('60% Funded', style: JcTextStyles.small),
                        ],
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        'Help Fund This Event',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Robotics kits, arena setup & competition entry fees.',
                        style: JcTextStyles.small,
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        children: [
                          Text('\$1,200 raised'),
                          Spacer(),
                          Text('\$2,000 goal', style: JcTextStyles.small),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(
                        value: .6,
                        minHeight: 7,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        onPressed: () => _push(
                          context,
                          EventDonationScreen(event: widget.event),
                        ),
                        icon: const Icon(
                          Icons.volunteer_activism_outlined,
                          size: 18,
                        ),
                        label: const Text('Donate'),
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFFFFC72C),
                          foregroundColor: const Color(0xFF002273),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Reactions',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF002273),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => likes++),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: JcColors.primary,
                      ),
                    ),
                    Text('$likes', style: JcTextStyles.small),
                    const SizedBox(width: 8),
                    const Text('👏  8   🎉  5'),
                  ],
                ),
                const Text(
                  'Comments',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: comment,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Add a comment…',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send, color: JcColors.primary),
                      onPressed: () {
                        final text = comment.text.trim();
                        if (text.isEmpty) return;
                        setState(() => comments.insert(0, text));
                        comment.clear();
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: JcColors.border),
                    ),
                  ),
                ),
                for (final message in comments)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      radius: 16,
                      child: Icon(Icons.person, size: 18),
                    ),
                    title: Text(message, style: const TextStyle(fontSize: 13)),
                    subtitle: const Text('Just now', style: JcTextStyles.small),
                  ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _eventInfoCard(IconData icon, String label, String value) => Container(
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(color: Color(0x0A000000), blurRadius: 2, offset: Offset(0, 1)),
    ],
  ),
  child: Row(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFFEBF1FF),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 20, color: const Color(0xFF0033A0)),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: JcTextStyles.small),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                height: 1.35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
Widget _eventPanel({required Widget child}) => Container(
  width: double.infinity,
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: JcColors.border),
    borderRadius: BorderRadius.circular(12),
  ),
  child: child,
);
Widget _eventPill(String label) => Container(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  decoration: BoxDecoration(
    color: const Color(0xFFEBF1FF),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Text(
    label,
    style: const TextStyle(fontSize: 10, color: Color(0xFF0033A0)),
  ),
);

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
              _eduSectionHeader('Continue learning'),
              const SizedBox(height: 8),
              _EducationLessonCard(
                title: 'Solving quadratic equations by factorising',
                meta: 'Mathematics · Video · 8 min left',
                percent: '45%',
                onTap: () => _push(context, const LessonOverviewScreen()),
              ),
              const SizedBox(height: 14),
              _eduSectionHeader(
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
                    tint: Color(0xFFEAF1FF),
                  ),
                  _EducationSubjectCard(
                    title: 'English Language',
                    type: 'Core · 10 lessons',
                    completion: '4 of 10 done',
                    percent: 40,
                    icon: Icons.menu_book_outlined,
                    tint: Color(0xFFFFF8DF),
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
              _eduSectionHeader('Exams', action: 'View timetable ›'),
              const SizedBox(height: 8),
              _eventPanel(
                child: Row(
                  children: [
                    Container(
                      width: 46,
                      height: 54,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF1FF),
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
              _eduSectionHeader('Settings'),
              const SizedBox(height: 8),
              _eventPanel(
                child: Column(
                  children: [
                    _EducationSettingRow(
                      icon: Icons.school_outlined,
                      title: 'Grade',
                      detail: 'Grade 10 · from your profile',
                      action: 'Change',
                    ),
                    const Divider(height: 16),
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

class LessonOverviewScreen extends StatelessWidget {
  const LessonOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Lesson',
    child: ListView(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
      children: [
        Row(
          children: [
            _eventPill('Mathematics'),
            const SizedBox(width: 6),
            _eventPill('Term 1'),
            const SizedBox(width: 6),
            _eventPill('5 parts'),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'Solving quadratic equations by factorising',
          style: TextStyle(
            fontSize: 21,
            height: 1.3,
            color: Color(0xFF002273),
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text('Mr. Williams · Updated Nov 12', style: JcTextStyles.small),
        const SizedBox(height: 14),
        _eventPanel(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
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
              const SizedBox(height: 8),
              const LinearProgressIndicator(
                value: .4,
                minHeight: 8,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              const SizedBox(height: 6),
              const Row(
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
        _eduSectionHeader('Lesson content'),
        const SizedBox(height: 8),
        _LessonPart(
          icon: Icons.videocam_outlined,
          title: 'Factorising basics — watch first',
          meta: 'Video · 11 min',
          done: true,
        ),
        const SizedBox(height: 10),
        _LessonPart(
          icon: Icons.article_outlined,
          title: 'Key terms and rules',
          meta: 'Article · 5 min read',
          done: true,
        ),
        const SizedBox(height: 10),
        _LessonPart(
          icon: Icons.image_outlined,
          title: 'Worked example diagrams',
          meta: 'Images · 3 of 8 viewed',
          progress: '45%',
        ),
        const SizedBox(height: 10),
        _LessonPart(
          icon: Icons.headphones_outlined,
          title: 'Teacher’s audio recap',
          meta: 'Audio · 6 min',
        ),
        const SizedBox(height: 12),
        const Text(
          'About this lesson',
          style: TextStyle(
            color: Color(0xFF002273),
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
            onPressed: () => _message(context, 'Part 3 is ready.'),
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

Widget _eduSectionHeader(String title, {String? action}) => Row(
  children: [
    Container(
      width: 5,
      height: 16,
      decoration: BoxDecoration(
        color: const Color(0xFF0033A0),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    const SizedBox(width: 6),
    Expanded(
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),
    if (action != null)
      Text(
        action,
        style: const TextStyle(fontSize: 11, color: Color(0xFF0033A0)),
      ),
  ],
);

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
        color: selected ? const Color(0xFFE6F4FF) : Colors.white,
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
    child: _eventPanel(
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xFFEAF1FF),
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
  Widget build(BuildContext context) => _eventPanel(
    child: Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: const Color(0xFFEAF1FF),
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

class _EducationBottomNav extends StatelessWidget {
  const _EducationBottomNav();
  @override
  Widget build(BuildContext context) => Container(
    height: 64,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(top: BorderSide(color: JcColors.border)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _EventNavItem(icon: Icons.rss_feed_outlined, label: 'Feed'),
        _EventNavItem(icon: Icons.chat_bubble_outline, label: 'Chat'),
        _EventNavItem(icon: Icons.home_filled, label: 'Home', selected: true),
        _EventNavItem(icon: Icons.emoji_events_outlined, label: 'Sport'),
        _EventNavItem(icon: Icons.person_outline, label: 'Profile'),
      ],
    ),
  );
}

class EventDonationScreen extends StatefulWidget {
  const EventDonationScreen({super.key, required this.event});
  final EventRecord event;

  @override
  State<EventDonationScreen> createState() => _EventDonationScreenState();
}

class _EventDonationScreenState extends State<EventDonationScreen> {
  String selectedAmount = '';
  bool donated = false;

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Donate to event',
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        const JcProgress(step: 1, total: 2, label: 'Donation'),
        const SizedBox(height: 24),
        const JcHeading(
          title: 'Support this event',
          description:
              'Every contribution helps JC keep community events accessible.',
        ),
        const SizedBox(height: 20),
        JcSummaryCard(
          title: widget.event.title,
          values: {
            'Date': widget.event.date,
            'Location': widget.event.location,
          },
        ),
        const SizedBox(height: 20),
        const Text('Choose an amount', style: JcTextStyles.label),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: ['J\$1,000', 'J\$2,500', 'J\$5,000', 'Other']
              .map(
                (amount) => ChoiceChip(
                  label: Text(amount),
                  selected: selectedAmount == amount,
                  onSelected: (_) => setState(() => selectedAmount = amount),
                ),
              )
              .toList(),
        ),
        if (selectedAmount == 'Other') ...[
          const SizedBox(height: 12),
          const JcInput(label: 'Amount', hint: 'Enter amount'),
        ],
        const SizedBox(height: 20),
        if (donated)
          Card(
            elevation: 0,
            color: const Color(0xFFEAF8ED),
            child: const Padding(
              padding: EdgeInsets.all(14),
              child: Row(
                children: [
                  Icon(Icons.check_circle_outline, color: JcColors.green),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text('Thank you. Your donation has been recorded.'),
                  ),
                ],
              ),
            ),
          )
        else
          JcButton(
            label: 'Continue to payment',
            enabled: selectedAmount.isNotEmpty,
            onPressed: () => setState(() => donated = true),
          ),
      ],
    ),
  );
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool obscure = true;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      title: 'Login',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const JcLogo(),
          const SizedBox(height: 32),
          const Center(child: Text('Welcome back', style: JcTextStyles.title)),
          const SizedBox(height: 4),
          const Center(
            child: Text(
              'Log in to stay connected to JC.',
              style: JcTextStyles.body,
            ),
          ),
          const SizedBox(height: 32),
          JcInput(
            label: 'Email',
            hint: 'Enter your email',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Password',
            controller: password,
            obscureText: obscure,
            trailing: IconButton(
              onPressed: () => setState(() => obscure = !obscure),
              icon: Icon(
                obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 18,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => _push(context, const ResetPasswordScreen()),
              child: const Text('Forgot your password?'),
            ),
          ),
          const SizedBox(height: 8),
          JcButton(
            label: 'Login',
            onPressed: () => _message(context, 'Login is ready to connect.'),
          ),
          const SizedBox(height: 32),
          const JcDivider(label: 'Or Continue With'),
          const SizedBox(height: 16),
          JcSocialButton(
            label: 'Continue with Google',
            icon: const Text(
              'G',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4285F4),
              ),
            ),
            onPressed: () => _message(context, 'Google sign-in selected.'),
          ),
          const SizedBox(height: 8),
          JcSocialButton(
            label: 'Continue with Apple',
            icon: const Icon(Icons.apple, size: 22),
            onPressed: () => _message(context, 'Apple sign-in selected.'),
          ),
          const SizedBox(height: 32),
          Center(
            child: Wrap(
              children: [
                const Text(
                  'Don’t have an account? ',
                  style: JcTextStyles.small,
                ),
                TextButton(
                  onPressed: () =>
                      _push(context, SignUpRoleScreen(data: SignUpData())),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final email = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      title: 'Password reset',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const JcLogo(),
          const SizedBox(height: 32),
          const Text(
            'Reset your password',
            style: JcTextStyles.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          const Text(
            'Enter your email and we’ll send you a reset link.',
            style: JcTextStyles.body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          JcInput(
            label: 'Email',
            hint: 'Enter your email',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 24),
          JcButton(
            label: 'Send reset link',
            onPressed: () => _message(context, 'Reset link requested.'),
          ),
        ],
      ),
    );
  }
}

class SignUpRoleScreen extends StatefulWidget {
  const SignUpRoleScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<SignUpRoleScreen> createState() => _SignUpRoleScreenState();
}

class _SignUpRoleScreenState extends State<SignUpRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
              children: [
                const Center(child: JcLogo()),
                const SizedBox(height: 24),
                const Text(
                  'Join JC Connect',
                  style: JcTextStyles.title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Tell us how you’re connected to Jamaica College.',
                  style: JcTextStyles.body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ...JcRole.values.map(
                  (role) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: JcRoleOption(
                      role: role,
                      selected: widget.data.role == role,
                      onTap: () => setState(() => widget.data.role = role),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
            child: Column(
              children: [
                JcButton(
                  label: 'Continue',
                  enabled: widget.data.role != null,
                  onPressed: () =>
                      _push(context, AccountDetailsScreen(data: widget.data)),
                ),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: JcTextStyles.small,
                    ),
                    TextButton(
                      onPressed: () => _push(context, const LoginScreen()),
                      child: const Text('Log in'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  final name = TextEditingController(text: '');
  final email = TextEditingController(text: '');
  final phone = TextEditingController(text: '');
  final password = TextEditingController();
  final confirm = TextEditingController();
  bool obscure = true;
  bool canContinue = false;

  @override
  void initState() {
    super.initState();
    for (final controller in [name, email, phone, password, confirm]) {
      controller.addListener(_syncContinue);
    }
  }

  void _syncContinue() {
    final nextValue =
        name.text.trim().isNotEmpty &&
        RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email.text.trim()) &&
        phone.text.trim().isNotEmpty &&
        password.text.length >= 8 &&
        RegExp(r'[A-Z]').hasMatch(password.text) &&
        RegExp(r'\d').hasMatch(password.text) &&
        RegExp(r'[^A-Za-z0-9]').hasMatch(password.text) &&
        password.text == confirm.text;
    if (nextValue != canContinue) setState(() => canContinue = nextValue);
  }

  @override
  void dispose() {
    for (final controller in [name, email, phone, password, confirm]) {
      controller.removeListener(_syncContinue);
    }
    for (final c in [name, email, phone, password, confirm]) {
      c.dispose();
    }
    super.dispose();
  }

  void next() {
    if (name.text.trim().isEmpty ||
        email.text.trim().isEmpty ||
        password.text.length < 8 ||
        password.text != confirm.text) {
      _message(context, 'Complete the required fields to continue.');
      return;
    }
    widget.data.name = name.text.trim();
    widget.data.email = email.text.trim();
    widget.data.phone = phone.text.trim();
    _push(context, VerifyEmailScreen(data: widget.data));
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
        children: [
          const JcProgress(step: 1, label: 'Account details'),
          const SizedBox(height: 24),
          const JcHeading(
            title: 'Create your account',
            description:
                'Use an email you check often. We’ll send a code to verify it.',
          ),
          const SizedBox(height: 24),
          JcInput(
            label: 'Full name',
            hint: 'e.g. Kemar Brown',
            controller: name,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Email',
            hint: 'you@example.com',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Phone number',
            hint: '+1 876 000 0000',
            controller: phone,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Password',
            controller: password,
            obscureText: obscure,
            trailing: IconButton(
              onPressed: () => setState(() => obscure = !obscure),
              icon: Icon(
                obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 18,
              ),
            ),
            helper:
                'At least 8 characters, with an uppercase letter, a number and a symbol.',
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Confirm password',
            controller: confirm,
            obscureText: obscure,
            trailing: Icon(
              obscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 18,
            ),
          ),
          const SizedBox(height: 24),
          JcButton(label: 'Continue', enabled: canContinue, onPressed: next),
        ],
      ),
    );
  }
}

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final otp = TextEditingController();

  @override
  void dispose() {
    otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const Center(child: JcLogo()),
          const SizedBox(height: 32),
          const Text(
            'Verify your email',
            style: JcTextStyles.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            'We sent a 6-digit code to\n${widget.data.email}',
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
              color: JcColors.muted,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          JcOtp(controller: otp),
          const SizedBox(height: 24),
          JcButton(
            label: 'Verify email',
            onPressed: () {
              if (otp.text.length == 6) {
                _openRoleDetails(context);
              } else {
                _message(context, 'Enter the 6-digit code.');
              }
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: Wrap(
              children: [
                const Text(
                  'Didn’t receive the code? ',
                  style: JcTextStyles.small,
                ),
                TextButton(
                  onPressed: () =>
                      _message(context, 'A new code has been sent.'),
                  child: const Text('Resend'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 150),
          const Center(
            child: Text(
              'Jamaica College • True Blue Secure Access',
              style: TextStyle(fontSize: 12, color: Color(0xFF94A3B8)),
            ),
          ),
        ],
      ),
    );
  }

  void _openRoleDetails(BuildContext context) {
    final screen = switch (widget.data.role!) {
      JcRole.student => StudentDetailsFlowScreen(data: widget.data),
      JcRole.parent => ParentDetailsFlowScreen(data: widget.data),
      JcRole.teacher => TeacherDetailsScreen(data: widget.data),
      JcRole.oldBoy => OldBoyDetailsFlowScreen(data: widget.data),
    };
    _push(context, screen);
  }
}

class StudentDetailsFlowScreen extends StatefulWidget {
  const StudentDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<StudentDetailsFlowScreen> createState() =>
      _StudentDetailsFlowScreenState();
}

class _StudentDetailsFlowScreenState extends State<StudentDetailsFlowScreen> {
  final studentId = TextEditingController();
  final dateOfBirth = TextEditingController();
  final address = TextEditingController();
  String grade = '';
  String className = '';
  String academicYear = '';
  String academicTrack = '';

  bool get canContinue =>
      studentId.text.trim().isNotEmpty &&
      grade.isNotEmpty &&
      className.isNotEmpty &&
      academicYear.isNotEmpty &&
      academicTrack.isNotEmpty &&
      dateOfBirth.text.trim().isNotEmpty &&
      address.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    for (final controller in [studentId, dateOfBirth, address]) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  void _continue(BuildContext context) {
    widget.data
      ..studentId = studentId.text.trim()
      ..grade = grade
      ..className = className
      ..academicYear = academicYear
      ..academicTrack = academicTrack
      ..dateOfBirth = dateOfBirth.text.trim()
      ..address = address.text.trim();
    _push(context, TermsScreen(data: widget.data));
  }

  @override
  void dispose() {
    for (final controller in [studentId, dateOfBirth, address]) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    label: 'Your details',
    title: 'Student details',
    description:
        'We’ll match this with school records to confirm you’re a JC student.',
    children: [
      JcInput(
        label: 'Student ID',
        hint: 'e.g. JC-2026-0000',
        controller: studentId,
      ),
      const JcHelper('You’ll find this on your school ID card.'),
      JcSelect(
        label: 'Grade',
        hint: 'Select your grade',
        value: grade,
        options: const [
          'First Form',
          'Second Form',
          'Third Form',
          'Fourth Form',
          'Lower Sixth',
          'Upper Sixth',
        ],
        onSelected: (value) => setState(() => grade = value),
      ),
      JcSelect(
        label: 'Class',
        hint: 'Select your class',
        value: className,
        options: const ['A', 'B', 'C', 'D', 'E'],
        onSelected: (value) => setState(() => className = value),
      ),
      JcSelect(
        label: 'Academic year',
        hint: 'Select academic year',
        value: academicYear,
        options: const ['2026', '2027', '2028'],
        onSelected: (value) => setState(() => academicYear = value),
      ),
      JcSelect(
        label: 'Academic track',
        hint: 'Select academic track',
        value: academicTrack,
        options: const ['General', 'Sciences', 'Humanities', 'Business'],
        onSelected: (value) => setState(() => academicTrack = value),
      ),
      JcInput(
        label: 'Date of birth',
        hint: 'DD / MM / YYYY',
        controller: dateOfBirth,
        keyboardType: TextInputType.datetime,
      ),
      JcInput(
        label: 'Address',
        hint: 'e.g. 12 Hope Road, Kingston 6',
        controller: address,
      ),
    ],
    enabled: canContinue,
    onContinue: () => _continue(context),
  );
}

class ParentDetailsFlowScreen extends StatefulWidget {
  const ParentDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<ParentDetailsFlowScreen> createState() =>
      _ParentDetailsFlowScreenState();
}

class _ParentDetailsFlowScreenState extends State<ParentDetailsFlowScreen> {
  final sonName = TextEditingController();
  final studentId = TextEditingController();
  final anotherSonName = TextEditingController();
  String relationship = '';
  bool additionalSon = false;

  bool get canContinue =>
      relationship.isNotEmpty &&
      sonName.text.trim().isNotEmpty &&
      studentId.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    sonName.addListener(_refresh);
    studentId.addListener(_refresh);
  }

  void _refresh() => setState(() {});

  void _continue(BuildContext context) {
    widget.data
      ..relationship = relationship
      ..sonName = sonName.text.trim()
      ..studentId = studentId.text.trim()
      ..anotherSonName = anotherSonName.text.trim();
    _push(context, TermsScreen(data: widget.data));
  }

  @override
  void dispose() {
    sonName.removeListener(_refresh);
    studentId.removeListener(_refresh);
    sonName.dispose();
    studentId.dispose();
    anotherSonName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: 'Your details',
    title: 'Your son at JC',
    description:
        'Link your account to your son so you can follow his school life.',
    children: [
      JcSelect(
        label: 'Relationship',
        hint: 'Select relationship',
        value: relationship,
        options: const ['Mother', 'Father', 'Guardian'],
        onSelected: (value) => setState(() => relationship = value),
      ),
      JcInput(
        label: 'Son’s full name',
        hint: 'Kemar Brown',
        controller: sonName,
      ),
      JcInput(
        label: 'Son’s student ID',
        hint: 'JC-2026-4815',
        controller: studentId,
      ),
      const JcHelper('Ask your son or check his report card.'),
      if (additionalSon)
        JcInput(
          label: 'Another son’s name',
          hint: 'Optional',
          controller: anotherSonName,
        ),
      JcOutlinedAction(
        label: additionalSon ? 'Remove another son' : 'Add another son',
        icon: additionalSon
            ? Icons.remove_circle_outline
            : Icons.add_circle_outline,
        onPressed: () => setState(() => additionalSon = !additionalSon),
      ),
    ],
    enabled: canContinue,
    onContinue: () => _continue(context),
  );
}

class OldBoyDetailsFlowScreen extends StatefulWidget {
  const OldBoyDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<OldBoyDetailsFlowScreen> createState() =>
      _OldBoyDetailsFlowScreenState();
}

class _OldBoyDetailsFlowScreenState extends State<OldBoyDetailsFlowScreen> {
  final formerStudentId = TextEditingController();
  String graduationYear = '';
  String lastGrade = '';
  String house = '';
  bool proofUploaded = false;

  bool get canContinue =>
      graduationYear.isNotEmpty && lastGrade.isNotEmpty && house.isNotEmpty;

  void _continue(BuildContext context) {
    widget.data
      ..graduationYear = graduationYear
      ..lastGrade = lastGrade
      ..house = house
      ..studentId = formerStudentId.text.trim()
      ..proofUploaded = proofUploaded;
    _push(context, TermsScreen(data: widget.data));
  }

  @override
  void dispose() {
    formerStudentId.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: 'Your details',
    title: 'Your JC years',
    description: 'Help us confirm you’re an Old Boy of Jamaica College.',
    children: [
      JcSelect(
        label: 'Graduation year',
        hint: 'Select year',
        value: graduationYear,
        options: const ['1990', '2000', '2010', '2020', '2026'],
        onSelected: (value) => setState(() => graduationYear = value),
      ),
      JcSelect(
        label: 'Last grade completed',
        hint: 'Select grade',
        value: lastGrade,
        options: const ['Fifth Form', 'Lower Sixth', 'Upper Sixth'],
        onSelected: (value) => setState(() => lastGrade = value),
      ),
      JcSelect(
        label: 'House',
        hint: 'Select your house',
        value: house,
        options: const ['Bell', 'East', 'Hobbs', 'Ricketts'],
        onSelected: (value) => setState(() => house = value),
      ),
      JcInput(
        label: 'Former student ID (optional)',
        hint: 'e.g. JC-2010-0000',
        controller: formerStudentId,
        helper: 'Speeds up verification if you have it.',
      ),
      JcFileField(
        selected: proofUploaded,
        onChanged: (value) => setState(() => proofUploaded = value),
      ),
      const Divider(height: 32),
      const Text('Your Old Boy profile (optional)', style: JcTextStyles.label),
      const JcAccordion(
        title: 'Clubs and sports',
        subtitle: 'Teams and clubs you were part of',
        icon: Icons.emoji_events_outlined,
      ),
      const JcAccordion(
        title: 'Leadership',
        subtitle: 'Roles you held at JC',
        icon: Icons.star_border,
      ),
      const JcAccordion(
        title: 'Career',
        subtitle: 'What you do today',
        icon: Icons.business_center_outlined,
      ),
      const JcAccordion(
        title: 'Giving back',
        subtitle: 'Mentorship, scholarships and events',
        icon: Icons.favorite_border,
      ),
      const JcHelper('You can add or change these later in your profile.'),
    ],
    enabled: canContinue,
    onContinue: () => _continue(context),
  );
}

class StudentDetailsScreen extends StatelessWidget {
  const StudentDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    label: 'Your details',
    title: 'Student details',
    description:
        'We’ll match this with school records to confirm you’re a JC student.',
    children: [
      JcInput(label: 'Student ID', hint: 'e.g. JC-2026-0000'),
      const JcHelper('You’ll find this on your school ID card.'),
      const JcSelect(label: 'Grade', hint: 'Select your grade'),
      const JcSelect(label: 'Class', hint: 'Select your class'),
      const JcSelect(label: 'Academic year', hint: 'Select academic year'),
      const JcSelect(label: 'Academic track', hint: 'Select academic track'),
      JcInput(label: 'Date of birth', hint: 'DD / MM / YYYY'),
      JcInput(label: 'Address', hint: 'e.g. 12 Hope Road, Kingston 6'),
    ],
    onContinue: () => _push(context, TermsScreen(data: data)),
  );
}

class ParentDetailsScreen extends StatelessWidget {
  const ParentDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: 'Your details',
    title: 'Your son at JC',
    description:
        'Link your account to your son so you can follow his school life.',
    children: [
      const JcSelect(label: 'Relationship', hint: 'Mother'),
      const JcInput(label: 'Son’s full name', hint: 'Kemar Brown'),
      const JcInput(label: 'Son’s student ID', hint: 'JC-2026-4815'),
      const JcHelper('Ask your son or check his report card.'),
      const JcOutlinedAction(
        label: 'Add another son',
        icon: Icons.add_circle_outline,
      ),
    ],
    onContinue: () => _push(context, TermsScreen(data: data)),
  );
}

class TeacherDetailsScreen extends StatefulWidget {
  const TeacherDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<TeacherDetailsScreen> createState() => _TeacherDetailsScreenState();
}

class _TeacherDetailsScreenState extends State<TeacherDetailsScreen> {
  final staffId = TextEditingController();
  final schoolEmail = TextEditingController();
  final address = TextEditingController();
  bool teacher = false;
  bool coach = false;

  bool get canContinue =>
      staffId.text.trim().isNotEmpty &&
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(schoolEmail.text.trim()) &&
      address.text.trim().isNotEmpty &&
      (teacher || coach);

  @override
  void initState() {
    super.initState();
    for (final controller in [staffId, schoolEmail, address]) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  void _continue(BuildContext context) {
    widget.data
      ..staffId = staffId.text.trim()
      ..schoolEmail = schoolEmail.text.trim()
      ..address = address.text.trim()
      ..teacherRole = [
        if (teacher) 'Teacher',
        if (coach) 'Coach',
      ].join(' and ');
    _push(context, TermsScreen(data: widget.data));
  }

  @override
  void dispose() {
    for (final controller in [staffId, schoolEmail, address]) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: 'Your details',
    title: 'Teacher or coach details',
    description: 'We’ll confirm your role with the school administration.',
    children: [
      JcInput(
        label: 'Staff ID',
        hint: 'e.g. JC-STF-0000',
        helper: 'Your JC employee number.',
        controller: staffId,
      ),
      JcInput(
        label: 'School email',
        hint: 'name@jc.edu.jm',
        helper: 'Your @jc.edu.jm email speeds up approval.',
        controller: schoolEmail,
        keyboardType: TextInputType.emailAddress,
      ),
      JcInput(
        label: 'Address',
        hint: 'e.g. 12 Hope Road, Kingston 6',
        controller: address,
      ),
      const SizedBox(height: 8),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('What do you do at JC?', style: JcTextStyles.label),
          Text('Select all that apply', style: JcTextStyles.small),
        ],
      ),
      JcCheckCard(
        title: 'Teacher',
        description: 'I teach subjects and classes',
        value: teacher,
        onChanged: (value) => setState(() => teacher = value),
      ),
      JcCheckCard(
        title: 'Coach',
        description: 'I coach a sports team',
        value: coach,
        onChanged: (value) => setState(() => coach = value),
      ),
      const JcHelper(
        'Pick at least one. We’ll ask a few questions about each.',
      ),
    ],
    enabled: canContinue,
    onContinue: () => _continue(context),
  );
}

class OldBoyDetailsScreen extends StatelessWidget {
  const OldBoyDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: 'Your details',
    title: 'Your JC years',
    description: 'Help us confirm you’re an Old Boy of Jamaica College.',
    children: [
      const JcSelect(label: 'Graduation year', hint: 'Select year'),
      const JcSelect(label: 'Last grade completed', hint: 'Select grade'),
      const JcSelect(label: 'House', hint: 'Select your house'),
      const JcInput(
        label: 'Former student ID (optional)',
        hint: 'e.g. JC-2010-0000',
        helper: 'Speeds up verification if you have it.',
      ),
      const JcFileField(),
      const Divider(height: 32),
      const Text('Your Old Boy profile (optional)', style: JcTextStyles.label),
      const JcAccordion(
        title: 'Clubs and sports',
        subtitle: 'Teams and clubs you were part of',
        icon: Icons.emoji_events_outlined,
      ),
      const JcAccordion(
        title: 'Leadership',
        subtitle: 'Roles you held at JC',
        icon: Icons.star_border,
      ),
      const JcAccordion(
        title: 'Career',
        subtitle: 'What you do today',
        icon: Icons.business_center_outlined,
      ),
      const JcAccordion(
        title: 'Giving back',
        subtitle: 'Mentorship, scholarships and events',
        icon: Icons.favorite_border,
      ),
      const JcHelper('You can add or change these later in your profile.'),
    ],
    onContinue: () => _push(context, TermsScreen(data: data)),
  );
}

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool terms = false;
  bool privacy = false;

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 32),
        children: [
          const JcProgress(step: 4, total: 5, label: 'Terms'),
          const SizedBox(height: 12),
          const JcHeading(
            title: 'Terms and privacy',
            description:
                'Please read how JC Connect works before you continue.',
          ),
          const SizedBox(height: 16),
          Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xFFF1F5F9)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: const [
                  JcTerm(
                    number: '1',
                    title: 'Using the app',
                    body:
                        'JC Connect serves as the private collegiate and alumni assembly. Membership is restricted to verified students, faculty, staff, and Old Boys.',
                  ),
                  JcTerm(
                    number: '2',
                    title: 'Community conduct and honor code',
                    body:
                        'In adherence to the motto “For Ever Upwards” members pledge respect, integrity, and good faith.',
                  ),
                  JcTerm(
                    number: '3',
                    title: 'Privacy and data safeguards',
                    body:
                        'All member directories, graduation cohort numbers, and academic achievements are protected with multi-layer cryptographic authentication.',
                  ),
                  JcTerm(
                    number: '4',
                    title: 'Donations and bursary payments',
                    body:
                        'Contributions toward collegiate athletic sponsorships, campus restoration, and student bursary grants represent irrevocable settlements overseen by the Board of Trustees.',
                  ),
                  JcTerm(
                    number: '5',
                    title: 'Account review and auditing',
                    body:
                        'System moderators reserve the authority to verify cohort identity cards, inspect reported behavior, and temporarily restrict feed publishing.',
                  ),
                ],
              ),
            ),
          ),
          CheckboxListTile(
            value: terms,
            onChanged: (value) => setState(() => terms = value ?? false),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
              'I have read and agree to the Terms of Use',
              style: TextStyle(fontSize: 12),
            ),
          ),
          CheckboxListTile(
            value: privacy,
            onChanged: (value) => setState(() => privacy = value ?? false),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
              'I agree to the Privacy Policy and how my collegiate data is stored and utilized',
              style: TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 8),
          JcButton(
            label: 'Agree and continue',
            enabled: terms && privacy,
            onPressed: () => _push(context, ReviewScreen(data: widget.data)),
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              'ⓘ  You can review these anytime in Settings',
              style: JcTextStyles.small,
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key, required this.data});
  final SignUpData data;

  Map<String, String> get roleDetails => switch (data.role) {
    JcRole.student => {
      'Student ID': data.studentId,
      'Grade': data.grade,
      'Class': data.className,
      'Academic year': data.academicYear,
      'Academic track': data.academicTrack,
      'Date of birth': data.dateOfBirth,
      'Address': data.address,
    },
    JcRole.parent => {
      'Relationship': data.relationship,
      'Son': data.sonName,
      'Student ID': data.studentId,
      if (data.anotherSonName.isNotEmpty) 'Another son': data.anotherSonName,
    },
    JcRole.teacher => {
      'Staff ID': data.staffId,
      'School email': data.schoolEmail,
      'Address': data.address,
      'Role': data.teacherRole,
    },
    JcRole.oldBoy => {
      'Graduation year': data.graduationYear,
      'Last grade': data.lastGrade,
      'House': data.house,
      'Former student ID': data.studentId,
      'Proof of attendance': data.proofUploaded ? 'Selected' : 'Not selected',
    },
    null => <String, String>{},
  };

  @override
  Widget build(BuildContext context) => JcScaffold(
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        const JcProgress(step: 5, total: 5, label: 'Review'),
        const SizedBox(height: 24),
        const JcHeading(
          title: 'Review and submit',
          description:
              'Check your details before we send them to the school for approval.',
        ),
        const SizedBox(height: 24),
        JcSummaryCard(
          title: 'Account',
          values: {
            'Full name': data.name,
            'Email': data.email,
            'Phone': data.phone,
            'Role': data.role?.title ?? '',
          },
        ),
        const SizedBox(height: 16),
        JcSummaryCard(
          title: '${data.role?.title ?? 'Member'} details',
          values: {...roleDetails, 'Status': 'Ready for review'},
        ),
        const SizedBox(height: 20),
        JcButton(
          label: 'Submit application',
          onPressed: () => _push(context, const SubmittedScreen()),
        ),
      ],
    ),
  );
}

class SubmittedScreen extends StatelessWidget {
  const SubmittedScreen({super.key});

  @override
  Widget build(BuildContext context) => JcScaffold(
    showBack: false,
    child: ListView(
      padding: const EdgeInsets.fromLTRB(16, 64, 16, 32),
      children: [
        const Center(child: JcLogo()),
        const SizedBox(height: 24),
        const JcHeading(
          align: TextAlign.center,
          title: 'Thanks, we’ve got your details',
          description: 'Your account is being reviewed by the JC admin team.',
        ),
        const SizedBox(height: 32),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: JcColors.border),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account status',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Step 2 of 3', style: JcTextStyles.small),
                  ],
                ),
                SizedBox(height: 20),
                JcTimelineRow(
                  icon: Icons.check,
                  color: Colors.green,
                  title: 'Submitted',
                  meta: 'Nov 03, 2026 · 11:20 AM',
                  badge: 'Done',
                ),
                JcTimelineRow(
                  icon: Icons.circle,
                  color: Color(0xFFFFC400),
                  title: 'Under review',
                  meta: 'Usually 1 to 2 business days',
                  badge: 'In progress',
                ),
                JcTimelineRow(
                  icon: Icons.lock_outline,
                  color: JcColors.muted,
                  title: 'Account ready',
                  meta: 'Full access to JC Connect',
                  badge: 'Upcoming',
                  last: true,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: JcColors.border),
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: JcColors.primary,
              child: Icon(Icons.mail_outline, color: Colors.white),
            ),
            title: Text(
              'We’ll keep you posted',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'You’ll get an email and a notification as soon as there’s an update.',
            ),
          ),
        ),
        const SizedBox(height: 90),
        Center(
          child: TextButton.icon(
            onPressed: () => _message(context, 'Support request started.'),
            icon: const Icon(Icons.mail_outline, color: JcColors.text),
            label: const Text(
              'Contact support',
              style: TextStyle(color: JcColors.text),
            ),
          ),
        ),
      ],
    ),
  );
}

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

class JcScaffold extends StatelessWidget {
  const JcScaffold({
    super.key,
    required this.child,
    this.title,
    this.showBack = true,
    this.showHomeIndicator = true,
  });
  final Widget child;
  final String? title;
  final bool showBack;
  final bool showHomeIndicator;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: [
        const Positioned.fill(
          child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
        ),
        Positioned(
          left: -90,
          top: -146,
          child: Container(
            width: 372,
            height: 372,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [Color(0xFFE7F0FF), Colors.white],
              ),
            ),
          ),
        ),
        Positioned(
          right: -200,
          top: -146,
          child: Container(
            width: 372,
            height: 372,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [Color(0xFFFFF8DF), Colors.white],
              ),
            ),
          ),
        ),
        SafeArea(
          top: false,
          bottom: false,
          child: Column(
            children: [
              JcAppHeader(title: title, showBack: showBack),
              Expanded(child: child),
            ],
          ),
        ),
        if (showHomeIndicator)
          const Align(
            alignment: Alignment.bottomCenter,
            child: JcHomeIndicator(),
          ),
      ],
    ),
  );
}

class JcAppHeader extends StatelessWidget {
  const JcAppHeader({super.key, this.title, this.showBack = true});
  final String? title;
  final bool showBack;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      SizedBox(height: MediaQuery.paddingOf(context).top),
      SizedBox(
        height: 36,
        child: Row(
          children: [
            if (showBack)
              IconButton(
                tooltip: 'Back',
                onPressed: () => Navigator.of(context).maybePop(),
                icon: const Icon(Icons.arrow_back, size: 22),
              ),
            if (title != null)
              Expanded(
                child: Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (showBack) const SizedBox(width: 48),
          ],
        ),
      ),
    ],
  );
}

class JcLogo extends StatelessWidget {
  const JcLogo({super.key});
  @override
  Widget build(BuildContext context) => Image.asset(
    'assets/jc_logo.png',
    width: 64,
    height: 75,
    fit: BoxFit.contain,
  );
}

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

class JcProgress extends StatelessWidget {
  const JcProgress({
    super.key,
    required this.step,
    required this.label,
    this.total = 5,
  });
  final int step;
  final int total;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Step $step of $total', style: JcTextStyles.small),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: JcColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            total,
            (index) => Expanded(
              child: Container(
                height: 4,
                margin: EdgeInsets.only(right: index == total - 1 ? 0 : 6),
                decoration: BoxDecoration(
                  color: index < step
                      ? JcColors.primary
                      : const Color(0xFFF1F5F9),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class JcButton extends StatelessWidget {
  const JcButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.outlined = false,
    this.enabled = true,
  });
  final String label;
  final VoidCallback onPressed;
  final bool outlined;
  final bool enabled;
  @override
  Widget build(BuildContext context) => SizedBox(
    height: 48,
    width: double.infinity,
    child: outlined
        ? OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              foregroundColor: JcColors.titleBlue,
              side: const BorderSide(color: JcColors.titleBlue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(label),
          )
        : FilledButton(
            onPressed: enabled ? onPressed : null,
            style: FilledButton.styleFrom(
              backgroundColor: JcColors.primary,
              disabledBackgroundColor: const Color(0xFF7DB5F7),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 6),
                const Icon(Icons.arrow_forward, size: 16),
              ],
            ),
          ),
  );
}

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
      _message(context, 'Select $label');
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
                color: Color(0x0A000000),
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

class JcRoleOption extends StatelessWidget {
  const JcRoleOption({
    super.key,
    required this.role,
    required this.selected,
    required this.onTap,
  });
  final JcRole role;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(12),
    child: Container(
      height: 78,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: selected ? JcColors.primary : JcColors.border,
          width: selected ? 1.5 : 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: JcColors.softBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(role.icon, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  role.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(role.subtitle, style: JcTextStyles.small),
              ],
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: selected ? JcColors.primary : JcColors.border,
                width: 1.5,
              ),
              color: selected ? JcColors.primary : Colors.white,
            ),
            child: selected
                ? const Icon(Icons.check, size: 13, color: Colors.white)
                : null,
          ),
        ],
      ),
    ),
  );
}

class JcOtp extends StatelessWidget {
  const JcOtp({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) => _OtpSlots(controller: controller);
}

class _OtpSlots extends StatefulWidget {
  const _OtpSlots({required this.controller});
  final TextEditingController controller;

  @override
  State<_OtpSlots> createState() => _OtpSlotsState();
}

class _OtpSlotsState extends State<_OtpSlots> {
  @override
  Widget build(BuildContext context) {
    final value = widget.controller.text;
    return SizedBox(
      height: 52,
      child: Stack(
        children: [
          Positioned.fill(
            child: TextField(
              controller: widget.controller,
              maxLength: 6,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autofocus: true,
              onChanged: (_) => setState(() {}),
              style: const TextStyle(color: Colors.transparent),
              cursorColor: Colors.transparent,
              decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
              ),
            ),
          ),
          IgnorePointer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                final active = index == value.length;
                return Container(
                  width: 48,
                  height: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: active ? JcColors.primary : JcColors.border,
                      width: active ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    index < value.length
                        ? value[index]
                        : active
                        ? '|'
                        : '',
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class JcHelper extends StatelessWidget {
  const JcHelper(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) => Text(text, style: JcTextStyles.small);
}

class JcOutlinedAction extends StatelessWidget {
  const JcOutlinedAction({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed,
  });
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: JcColors.text),
        label: Text(label, style: const TextStyle(color: JcColors.text)),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: JcColors.border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class JcCheckCard extends StatelessWidget {
  const JcCheckCard({
    super.key,
    required this.title,
    required this.description,
    required this.value,
    required this.onChanged,
  });
  final String title;
  final String description;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => onChanged(!value),
    borderRadius: BorderRadius.circular(12),
    child: Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (v) => onChanged(v ?? false),
            visualDensity: VisualDensity.compact,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14)),
                Text(
                  description,
                  style: JcTextStyles.body.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class JcFileField extends StatelessWidget {
  const JcFileField({super.key, this.selected = false, this.onChanged});
  final bool selected;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Proof of attendance', style: JcTextStyles.label),
      const SizedBox(height: 6),
      InkWell(
        onTap: () {
          onChanged?.call(true);
          _message(context, 'Proof marked for upload.');
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: JcColors.border),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(Icons.upload_file_outlined, size: 18, color: JcColors.text),
              SizedBox(width: 8),
              Text(
                'Upload proof',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                selected ? 'Proof selected' : 'No file chosen',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 4),
      const Text('PDF, JPG or PNG, up to 5 MB.', style: JcTextStyles.small),
    ],
  );
}

class JcAccordion extends StatefulWidget {
  const JcAccordion({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;
  @override
  State<JcAccordion> createState() => _JcAccordionState();
}

class _JcAccordionState extends State<JcAccordion> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => setState(() => expanded = !expanded),
    borderRadius: BorderRadius.circular(12),
    child: Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: JcColors.softBlue,
                child: Icon(widget.icon, color: JcColors.primary, size: 18),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(widget.subtitle, style: JcTextStyles.small),
                  ],
                ),
              ),
              Icon(
                expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              ),
            ],
          ),
          if (expanded)
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 44),
              child: Text(
                'You can add these details after your account is approved.',
                style: JcTextStyles.small,
              ),
            ),
        ],
      ),
    ),
  );
}

class JcTerm extends StatelessWidget {
  const JcTerm({
    super.key,
    required this.number,
    required this.title,
    required this.body,
  });
  final String number;
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: JcColors.softBlue,
              child: Text(
                number,
                style: const TextStyle(fontSize: 10, color: JcColors.primary),
              ),
            ),
            const SizedBox(width: 6),
            Text(title, style: const TextStyle(fontSize: 12)),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          body,
          style: const TextStyle(
            fontSize: 10,
            height: 1.25,
            color: JcColors.muted,
          ),
        ),
      ],
    ),
  );
}

class JcSummaryCard extends StatelessWidget {
  const JcSummaryCard({super.key, required this.title, required this.values});
  final String title;
  final Map<String, String> values;
  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: JcColors.border),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const Text(
                'Edit',
                style: TextStyle(fontSize: 12, color: JcColors.primary),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...values.entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Expanded(child: Text(entry.key, style: JcTextStyles.small)),
                  Text(
                    entry.value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class JcTimelineRow extends StatelessWidget {
  const JcTimelineRow({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.meta,
    required this.badge,
    this.last = false,
  });
  final IconData icon;
  final Color color;
  final String title;
  final String meta;
  final String badge;
  final bool last;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: color.withAlpha(25),
              child: Icon(icon, color: color, size: 16),
            ),
            if (!last)
              Container(width: 2, height: 24, color: color.withAlpha(90)),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: color.withAlpha(20),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        badge,
                        style: TextStyle(
                          fontSize: 11,
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(meta, style: JcTextStyles.small),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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

class JcSocialButton extends StatelessWidget {
  const JcSocialButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });
  final String label;
  final Widget icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) => SizedBox(
    height: 52,
    width: double.infinity,
    child: OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: JcColors.text,
        side: const BorderSide(color: Color(0xFFEFEFEF)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(label),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, size: 16),
        ],
      ),
    ),
  );
}

class JcHomeIndicator extends StatelessWidget {
  const JcHomeIndicator({super.key});
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Container(
      width: 144,
      height: 5,
      decoration: BoxDecoration(
        color: const Color(0xFF292929),
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  );
}

void _push(BuildContext context, Widget screen) =>
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => screen));
void _message(BuildContext context, String text) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
