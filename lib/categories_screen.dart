import 'package:app3_meals_app/category_item.dart';
import 'package:flutter/material.dart';
import 'package:app3_meals_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(catData.title, catData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 20),
    );
  }
}
