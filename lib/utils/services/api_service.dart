import 'dart:convert';

import 'package:flutter_news_api/models/news_article_model.dart';
import 'package:flutter_news_api/utils/constants.dart';
import 'package:http/http.dart';

// Api network service using HTTP request
// This allows us to make a simple GET request from the API
// and get the articles and then return a list of articles.

class ApiService {

  // News end-point for Tech-Crunch news
  final String endPointUrl = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey";

  Future <List<NewsArticle>> getArticles () async {
    Response response = await get(Uri.parse(Uri.encodeFull(endPointUrl)));

    if (response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json["articles"];

      // Allows us get the different articles from the json file and put them into a list.
      List<NewsArticle> articles = body.map((dynamic item) => NewsArticle.fromJson(item)).toList();
      return articles;
    } else {
      throw "Cannot get the Articles";
    }

  }
}