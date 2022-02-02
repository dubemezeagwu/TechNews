import 'package:flutter/material.dart';
import 'package:flutter_news_api/utils/constants.dart';

Widget buildCoverImage (BuildContext context){

  final double coverPictureHeight = 280;

  return Container(
    color: Colors.grey,
    child: Image.network(
        coverPictureImageUrl,
        width: double.infinity,
        height: coverPictureHeight,
      fit: BoxFit.cover,
    ),
  );
}