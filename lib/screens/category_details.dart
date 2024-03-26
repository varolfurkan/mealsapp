import 'package:flutter/material.dart';
import 'package:mealsapp/data/meal_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

class CategoryDetailScreen extends StatelessWidget {
  final Category category;

  const CategoryDetailScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Meal> mealList =
    meals.where((element) => element.categoryId == category.id).toList();

    Widget widget = ListView.builder(
      itemBuilder: (context, index) => Text(mealList[index].name),
      itemCount: mealList.length,);

    if (mealList.isEmpty) {
      widget= const Center(child: Text("Bu kategoride hiçbir yemek bulunamadı."),);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("${category.name} Yemekleri"),
      ),
      body: widget,
    );
  }
}
