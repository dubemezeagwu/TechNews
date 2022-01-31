import 'package:flutter/material.dart';
import 'package:flutter_news_api/models/news_article_model.dart';
import 'package:flutter_news_api/utils/services/api_service.dart';

Widget articlesListBuilder (BuildContext context){


  ApiService apiClient = ApiService();
  Size size = MediaQuery.of(context).size;

  return FutureBuilder(
      future: apiClient.getArticles(),
      builder: (BuildContext context, AsyncSnapshot<List<NewsArticle>> snapshot){

        // Checks if snapshot has data
        if (snapshot.hasData){
          // Articles data from the snapshot
          List<NewsArticle>? articles = snapshot.data;
          return SingleChildScrollView(
              child: SizedBox(
                height: size.height,
                width: size.width,
                child: ListView.builder(
                  itemCount: articles!.length,
                  itemBuilder: (context, index){
                    return ListTile(title: Text(articles[index].title),);
                  },
                ),
              ),

          );
        }
        return Center(
          child: Scaffold(
            body: CircularProgressIndicator(),
          ),);
      },
  );
}