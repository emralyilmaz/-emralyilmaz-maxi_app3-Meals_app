import 'package:app3_meals_app/dummy_data.dart';
import 'package:app3_meals_app/models/meal.dart';
import 'package:app3_meals_app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = "/category-meals";

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // durum referansları değiştiğinde tetiklenecektir,
    // bu aynı zamanda duruma ait olan widget tamamen başlatıldığında çağrılacağı anlamına gelir ve biz bağlamda bu,
    // derleme çalıştırılmadan önce çalışmaya devam edecektir.
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs["title"];
      final categoryId = routeArgs["id"];
      displayedMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            final cMI = displayedMeals[index];
            return MealItem(
              id: cMI.id,
              title: cMI.title,
              imageUrl: cMI.imageUrl,
              duration: cMI.duration,
              complexity: cMI.complexity,
              affordability: cMI.affordability,
              removeItem: _removeMeal,
            );
          },
          itemCount: displayedMeals.length,
        ));
  }
}
