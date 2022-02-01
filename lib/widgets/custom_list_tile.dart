import 'package:flutter/material.dart';
import 'package:flutter_news_api/models/news_article_model.dart';
import 'package:flutter_news_api/pages/screens/article_details_page.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom list tile widget for displays the list of articles.
Widget customListTile (BuildContext context, NewsArticle article){
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ArticleDetailsPage(article: article))
      );
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0
          ),
        ]),
      child: Column(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(article.urlToImage),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12.0),),
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
          Text(
            article.title,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 16.0,
            fontFamily: GoogleFonts.robotoCondensed().toString()),
          )
        ],
      ),
    ),
  );
}