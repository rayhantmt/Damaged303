class NewsCategory {
  final String category;

  NewsCategory({required this.category});
}

class NewsModel {
  final List<NewsCategory> newsCategories = [
    NewsCategory(category: 'HR Strategy & Leadership'),
    NewsCategory(category: 'Workforce Compliance & Regulation'),
    NewsCategory(category: 'Talent Acquisition & Labor Trends'),
    NewsCategory(category: 'Compensation, Benefits & Rewards'),
    NewsCategory(category: 'People Development & Culture'),
  ];
}
