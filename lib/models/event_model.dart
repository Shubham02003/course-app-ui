class EventModel {
  final String imageUrl;
  final String category;
  final String programName;
  final String date;
  final String day;
  EventModel(
      {required this.programName,
      required this.category,
      required this.date,
      required this.imageUrl,
      required this.day});
}

List<EventModel> eventModelList = [
  EventModel(
      programName: 'Understanding of human behaviour',
      category: 'Babycare',
      date: '13 Feb',
      imageUrl: 'assets/lessons2.png',
      day: 'sunday'),
  EventModel(
      programName: 'Understanding of human behaviour',
      category: 'Babycare',
      date: '13 Feb',
      imageUrl: 'assets/lessons2.png',
      day: 'sunday'),
  EventModel(
      programName: 'Understanding of human behaviour',
      category: 'Babycare',
      date: '13 Feb',
      imageUrl: 'assets/lessons2.png',
      day: 'sunday'),
  EventModel(
      programName: 'Understanding of human behaviour',
      category: 'Babycare',
      date: '13 Feb',
      imageUrl: 'assets/lessons2.png',
      day: 'sunday'),
  EventModel(
      programName: 'Understanding of human behaviour',
      category: 'Babycare',
      date: '13 Feb',
      imageUrl: 'assets/lessons2.png',
      day: 'sunday'),
];
