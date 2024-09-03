import 'package:flutter/material.dart';
import 'package:news_app/Screens/tab_item.dart';
import '../apis/api_manger.dart';

class TabBarWidget extends StatefulWidget {
  String id;
   TabBarWidget({required this.id,super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int selectedTabIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManger.getSources(widget.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(
              child: Text(
            "Something went wrong",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ));
        }
        var sources = snapshot.data?.sources ?? [];
        return DefaultTabController(
          length: sources.length,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              isScrollable: true,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              onTap: (value) {
                selectedTabIndex = value;
                setState(() {});
              },
              tabs: sources
                  .map((e) => TabItem(
                        sources: e,
                        isSelected: sources.elementAt(selectedTabIndex) == e,
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
