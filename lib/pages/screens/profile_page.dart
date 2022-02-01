import 'package:flutter/material.dart';
import 'package:flutter_news_api/widgets/build_cover_image.dart';

// Route displaying the Profile page
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final double coverHeight = 280;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildCoverImage(context),
    );
  }
}
