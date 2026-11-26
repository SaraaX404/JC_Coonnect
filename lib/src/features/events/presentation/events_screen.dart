import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_nav_item.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/events/data/mock_events.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:jc_connect_app/src/features/events/presentation/widgets/event_calendar.dart';
import 'package:jc_connect_app/src/features/events/presentation/widgets/event_list_card.dart';
import 'package:material_ui/material_ui.dart';

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
    return mockEvents.where((event) {
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
          child: RadioGroup<String>(
            groupValue: selectedCategory,
            onChanged: (value) => Navigator.pop(context, value),
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
                    title: Text(category),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
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
              ? EventCalendar(events: visibleEvents)
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
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        JcNavItem(icon: Icons.rss_feed_outlined, label: 'Feed'),
        JcNavItem(icon: Icons.chat_bubble_outline, label: 'Chat'),
        JcNavItem(icon: Icons.home_outlined, label: 'Home', selected: true),
        JcNavItem(icon: Icons.emoji_events_outlined, label: 'Sport'),
        JcNavItem(icon: Icons.person_outline, label: 'Profile'),
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
              EventListCard(event: events[index], featured: index == 0),
        );
}

class _EmptyEventsState extends StatelessWidget {
  const _EmptyEventsState();

  @override
  Widget build(BuildContext context) => const Center(
    child: Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
