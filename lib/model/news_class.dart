class NewsArticle {
  String? author;
  String? title;
  String? description;
  String? source;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  String?url;

  NewsArticle({
    required this.author,
    required this.title,
    required this.description,
    this.source,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
    this.url
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      source: json['name'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'],
      url:json['url']
    );
  }
}