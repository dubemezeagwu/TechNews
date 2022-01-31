
// News source model
class NewsSource {
  String id;
  String name;

  // Constructor for the news source class
  NewsSource({required this.id,required this.name});

  // Factory function that maps the JSON
  factory NewsSource.fromJson(Map<String, dynamic> json){
    return NewsSource(
        id: json["id"],
        name: json["name"]
    );
  }

}