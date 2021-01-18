class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Your personal Diary, Journal, Memoir; Celebrate your daily life!",
    category: "My Journal App",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "A easy & secure way to organize all your important documents at one place",
    category: "Doc Organizer App",
    image: "assets/images/work_2.png",
  ),
];
