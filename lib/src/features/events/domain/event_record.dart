class EventRecord {
  const EventRecord({
    required this.id,
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
  final String id;
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
