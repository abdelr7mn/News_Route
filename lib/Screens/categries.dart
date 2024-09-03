import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'category_item.dart';

class CategriesTab extends StatelessWidget {
  Function onClick;

  CategriesTab({required this.onClick, super.key});

  List<CategoryModel> categories = CategoryModel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            "Pick your category of interest",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 25),
        Expanded(
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    onClick(categories[index]);
                  },
                  child: CategoryItem(
                      categoryModel: categories[index], isodd: index.isOdd));
            },
            itemCount: categories.length,
          ),
        )
      ],
    );
  }
}
