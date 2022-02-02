import 'package:flutter/material.dart';
import 'package:flutter_news_api/widgets/build_cover_image.dart';
import 'package:flutter_news_api/widgets/build_profile_content.dart';
import 'package:flutter_news_api/widgets/build_profile_image.dart';

// Route displaying the Profile page
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    final top = 280 -144 / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  buildCoverImage(context),
                  Positioned(
                    top: top.toDouble(),
                      child: buildProfileImage(context)
                  ),
                ],
              ),
              buildProfileContent(context)
            ],
          ),
        ),
      )
    );
  }
}
