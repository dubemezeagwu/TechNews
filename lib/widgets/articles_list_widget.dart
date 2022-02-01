import 'package:flutter/material.dart';
import 'package:flutter_news_api/models/news_article_model.dart';
import 'package:flutter_news_api/utils/services/api_service.dart';
import 'package:flutter_news_api/widgets/custom_list_tile.dart';


// Builder for the news article
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
          return SizedBox(
                height: size.height,
                width: size.width,
                child: ListView.builder(
                  itemCount: articles!.length,
                  itemBuilder: (context, index){
                    return customListTile(context, articles[index]);
                  },
                ),
              );
        }
        return Center(
          heightFactor: size.height,
          widthFactor: size.width,
          child: Scaffold(
            body: CircularProgressIndicator(),
          ),);
      },
  );
}