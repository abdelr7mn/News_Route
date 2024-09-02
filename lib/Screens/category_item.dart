import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel model;
  bool isodd;

  CategoryItem({required this.model, required this.isodd, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          decoration: BoxDecoration(
              color: model.color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: isodd ? Radius.circular(25) : Radius.zero,
                bottomLeft: !isodd ? Radius.circular(25) : Radius.zero,
              )),
          child: Column(
            children: [
              Expanded(child: Image.asset(model.image)),
              Text(
                model.name,
                style: TextStyle(fontSize: 20),
              ),
            ],
          )),
    );
  }
}
