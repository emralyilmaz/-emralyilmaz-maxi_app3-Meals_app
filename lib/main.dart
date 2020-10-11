import 'package:app3_meals_app/categories_screen.dart';
import 'package:app3_meals_app/category_meals_screen.dart';
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
      home: CategoriesScreen(),
      routes: {
        "/category-meals": (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
