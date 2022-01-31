import 'package:flutter_news_api/models/news_source_model.dart';

class NewsArticle {
  NewsSource source;
  String author, title, url, description, urlToImage, publishedAt, content;

  // Constructor for the news article class
  NewsArticle({
    required this.source,
    required this.author,
    required this.title,
    required this.url,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
    required this.content});

  // Factory function that maps the Json
  factory NewsArticle.fromJson(Map<String, dynamic> json){
    return NewsArticle(
        source: NewsSource.fromJson(json["source"]),
        author: json["author"] as String,
        title: json["title"] as String,
        url: json["url"] as String,
        description: json["description"] as String,
        urlToImage: json["urlToImage"] as String,
        publishedAt: json["publishedAt"] as String,
        content: json["content"] as String
    );
  }
}