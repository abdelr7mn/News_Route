import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/Models/NewsData.dart';
import 'package:news_app/Models/Sourceresponse.dart';

class ApiManger {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=6b13ef62826f4cc183516b0455554622

  static Future<Sourceresponse> getSources(String id) async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources",
        {"apiKey": "6b13ef62826f4cc183516b0455554622", "category": id});

    http.Response response = await http.get(url);
    Map<String, dynamic> jsonFormat = jsonDecode(response.body);
    Sourceresponse sourceresponse = Sourceresponse.fromJson(jsonFormat);
    return sourceresponse;
  }

  static Future<NewsDataResponse> getNewsData(String sourceId) async {
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=6b13ef62826f4cc183516b0455554622
    Uri url = Uri.https("newsapi.org", "/v2/everything",
        {"apiKey": "6b13ef62826f4cc183516b0455554622", "sources": sourceId});
    http.Response response = await http.get(url);
    var jsonFormat = jsonDecode(response.body);
    NewsDataResponse newsDataresponse = NewsDataResponse.fromJson(jsonFormat);
    return newsDataresponse;
  }
}
