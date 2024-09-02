import 'package:flutter/material.dart';

class CategoryModel {
  String id;
  String name;
  String image;
  Color color;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.color});

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(
          id: "business",
          name: "Business",
          image: "assets/images/bussines.png",
          color: Colors.orange),
      CategoryModel(
          id: "sports",
          name: "Sports",
          image: "assets/images/sports.png",
          color: Colors.red),
      CategoryModel(
          id: "entertainment",
          name: "Entertainment",
          image: "assets/images/environment.png",
          color: Colors.blueAccent),
      CategoryModel(
          id: "general",
          name: "Politics",
          image: "assets/images/Politics.png",
          color: Colors.cyanAccent),
      CategoryModel(
          id: "health",
          name: "Health",
          image: "assets/images/health.png",
          color: Colors.purpleAccent),
      CategoryModel(
          id: "science",
          name: "Science",
          image: "assets/images/science.png",
          color: Colors.green),

    ];
  }
}
