import 'package:flutter/material.dart';
import 'package:flutter_news_api/utils/constants.dart';

Widget buildProfileImage (BuildContext context){

  final double profilePictureHeight = 144;
  final bottom = profilePictureHeight /2;

  return Container(
    margin: EdgeInsets.only(bottom: bottom),
    child: ClipOval(
        child: Image.network(
          profilePictureImageUrl,
          height: profilePictureHeight,
          fit: BoxFit.cover,
        )
    ),
  );
}
