import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/apis/api_manger.dart';
import 'categries.dart';
import 'news_item.dart';
import 'tab_bar.dart';
import 'tab_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedTabindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage("assets/images/pattern.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Drawer()),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          title: Text(
            "News App",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
        ),
        body: SelectedCartegory == null
            ? CategriesTab(
                onClick: onCategorySelected,
              )
            : TabBarWidget(id: SelectedCartegory!.id),
      ),
    );
  }

  CategoryModel? SelectedCartegory = null;

  onCategorySelected(cat) {
    SelectedCartegory = cat;
    setState(() {});
  }
}
