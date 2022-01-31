import 'package:flutter/material.dart';
import 'package:flutter_news_api/pages/screens/home_page.dart';
import 'package:flutter_news_api/pages/screens/profile_page.dart';
import 'package:flutter_news_api/pages/screens/saved_articles_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedPageIndex = 0;

  void onTapped (int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePage(),
    SavedArticlesPage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore),label: "Saved Articles"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
          onTap: onTapped,
          currentIndex: _selectedPageIndex,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey.shade400,)
    );

  }
}
