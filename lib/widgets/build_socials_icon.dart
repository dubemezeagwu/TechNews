import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildSocialsIcon (BuildContext context, IconData fontType){
  return CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child: Center(
            child: FaIcon(fontType, size: 32,)),
      ),
    ),
  );
}