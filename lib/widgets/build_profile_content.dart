import 'package:flutter/material.dart';
import 'package:flutter_news_api/helpers/reusable_card.dart';
import 'package:flutter_news_api/utils/constants.dart';
import 'package:flutter_news_api/widgets/build_socials_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildProfileContent (BuildContext context) {

  return Column(
    children: [
      const SizedBox(height: 100.0,),
      Text(
        "James Spencer",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),),
      const SizedBox(height: 8.0,),
      Text("Blockchain Developer"),
      const SizedBox(height: 8.0,),
      Divider(),
      const SizedBox(height: 8.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildSocialsIcon(context, FontAwesomeIcons.github),
          buildSocialsIcon(context, FontAwesomeIcons.twitter),
          buildSocialsIcon(context, FontAwesomeIcons.linkedin)
        ],
      ),
      const SizedBox(height: 12.0,),
      Container(
        child: ReusableCard(
          backgroundColor: Colors.grey.shade400,
          cardDetails: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "About Me",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                ),
                Text(aboutMeText),
              ],
            ),
          ),),
      ),
      const SizedBox(height: 8.0,)



    ],
  );
}