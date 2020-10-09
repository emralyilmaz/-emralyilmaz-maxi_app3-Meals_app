import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      // const ile bu build method çalıştırıldığında, buradaki bu nesne yeniden oluşturulmayacaktır
      // çünkü Flutter bunun sabit olduğunu, değiştirilemeyeceğini ve dolayısıyla eskisini kullanması gerektiğini algılar.
      child: Text(title),
      color: color,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
