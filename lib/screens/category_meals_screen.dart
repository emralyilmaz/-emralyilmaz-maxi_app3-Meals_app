import 'package:app3_meals_app/dummy_data.dart';
import 'package:app3_meals_app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            final cMI = categoryMeals[index];
            return MealItem(
                id: cMI.id,
                title: cMI.title,
                imageUrl: cMI.imageUrl,
                duration: cMI.duration,
                complexity: cMI.complexity,
                affordability: cMI.affordability);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
