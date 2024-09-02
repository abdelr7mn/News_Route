import 'package:flutter/material.dart';
import 'package:news_app/Models/NewsData.dart';

class NewsItem extends StatelessWidget {
  Articles articles;

  NewsItem({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
              child: Image.network(articles.urlToImage ?? "")),
          Text(
            articles.author ?? "",
            style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
                fontWeight: FontWeight.bold),
          ),
          Text(
            articles.title ?? "",
            maxLines: 2,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            articles.description ?? "",
            maxLines: 2,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
          Text(
            articles.publishedAt!.substring(0, 10) ?? "",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 15,
                color: Colors.teal,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
