import 'package:app3_meals_app/screens/categories_screen.dart';
import 'package:app3_meals_app/screens/category_meals_screen.dart';
import 'package:app3_meals_app/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.amber,
          scaffoldBackgroundColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: "Raleway"),
      // home: CategoriesScreen(),
      initialRoute: "/",
      routes: {
        "/": (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen()
      },
    );
  }
}
