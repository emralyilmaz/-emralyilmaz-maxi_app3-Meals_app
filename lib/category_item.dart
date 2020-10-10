import 'package:app3_meals_app/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMealsScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        // const ile bu build method çalıştırıldığında, buradaki bu nesne yeniden oluşturulmayacaktır
        // çünkü Flutter bunun sabit olduğunu, değiştirilemeyeceğini ve dolayısıyla eskisini kullanması gerektiğini algılar.
        child: Text(
          title,
          style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
