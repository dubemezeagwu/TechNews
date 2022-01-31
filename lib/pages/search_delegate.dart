import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>{
  final newsOutlets = [
    "TechCrunch",
    "Daily Dapper",
    "Vanguard",
    "The Punch",
    "The Sun",
    "Sky Sports"
    "Metro UK",
    "Jitty",
    "Al-Jazeera",
    "Sky News",
    "Arise TV",
    "The Voice of the Nation",
    "Sunrise",
    "Breakfast Club USA",
    "ESPN",
    "E Entertainment",
    "Medium",
  ];

  final recentNewsOutletsSearch = [
    "Sunrise",
    "Breakfast Club USA",
    "ESPN",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app bar
    return [IconButton(onPressed: (){
      query = "";
    }, icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon of top left of the app bar
    return IconButton(
        onPressed: (){
          close(context, null.toString());
          },
        icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,));
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show results based on selections
    return Center(
      child: Container(
        height: 150,
        width: 150,
        child: Card(
          color: Colors.blueGrey.shade200,
          child: Center(
            child: Text(query.toString()),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Shown when user searches for something
    final suggestionsList = query.isEmpty
        ? recentNewsOutletsSearch
        : newsOutlets.where((element) => element.startsWith(query)).toList(); // if query is empty, return recentNews... if not return newsOutlets

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
      ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.book),
        title: RichText(
            text: TextSpan(
              text: suggestionsList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: suggestionsList[index].substring(query.length),
                  style: TextStyle(
                      color: Colors.grey)
                )
              ]
            )),
      ),
    itemCount: suggestionsList.length,
    );
  }
  
}