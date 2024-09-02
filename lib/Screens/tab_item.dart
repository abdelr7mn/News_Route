import 'package:flutter/material.dart';
import 'package:news_app/Models/Sourceresponse.dart';

class TabItem extends StatelessWidget {
  Sources sources;
  bool isSelected;

  TabItem({required this.isSelected, required this.sources, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.green)),
      child:

      Text(sources.name ?? " ",
      style: TextStyle(color: isSelected ?Colors.white
          : Colors.black )),
    );
  }
}
