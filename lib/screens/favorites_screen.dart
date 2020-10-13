import 'package:app3_meals_app/models/meal.dart';
import 'package:app3_meals_app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text("You have no favorite yet - start adding some!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          final cMI = favoriteMeals[index];
          return MealItem(
            id: cMI.id,
            title: cMI.title,
            imageUrl: cMI.imageUrl,
            duration: cMI.duration,
            complexity: cMI.complexity,
            affordability: cMI.affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
