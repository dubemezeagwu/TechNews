import 'package:flutter/material.dart';
import 'package:flutter_news_api/models/news_article_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleDetailsPage extends StatelessWidget {

  final NewsArticle article;
  const ArticleDetailsPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          // height: 400,
          // width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0,),
              Container(
                  child: Center(
                      child: Text(article.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),)
                  )
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(article.urlToImage),
                    fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(12.0),
                ) ,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade400,
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Text(
                  article.source.name,
                  style: TextStyle(
                      color: Colors.black54),),
              ),
              SizedBox(
                height: 8.0,
              ),
              Center(
                child: Text(
                  article.content,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
