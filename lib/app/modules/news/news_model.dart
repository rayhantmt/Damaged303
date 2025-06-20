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

class newsdetailsmodel {
  final List<String> tags;
  final String headline;
  final String description;

  newsdetailsmodel({
    required this.tags,
    required this.headline,
    required this.description,
  });
}
