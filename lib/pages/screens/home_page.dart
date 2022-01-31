import 'package:flutter/material.dart';
import 'package:flutter_news_api/pages/search_delegate.dart';
import 'package:flutter_news_api/utils/constants.dart';
import 'package:flutter_news_api/widgets/articles_list_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [

          /* Sliver App Bar */
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.blueGrey.shade400,
            leading: IconButton(icon: Icon(Icons.menu, color: Colors.black,),onPressed: () { },),
            title: Text("Daily News", style: TextStyle(color: kTextColor,
                fontSize: 19,fontFamily: GoogleFonts.robotoMono().toString()),),
            centerTitle: true,
            expandedHeight: 200,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search,color: Colors.black,),onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              },)
            ],
            flexibleSpace: FlexibleSpaceBar(

            ),
          ),

          SliverToBoxAdapter(
            child: Center(child: articlesListBuilder(context))
            ),
        ],
      ),
    );
  }
}
