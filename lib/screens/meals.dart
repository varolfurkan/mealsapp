import 'package:flutter/material.dart';
import 'package:mealsapp/data/meal_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screens/meal_details.dart';
import 'package:mealsapp/widgets/meal_card.dart';

class Meals extends StatelessWidget {
  final Category category;

  const Meals({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Meal> mealList =
    meals.where((element) => element.categoryId == category.id).toList();

    Widget widget = ListView.builder(
      itemBuilder: (context, index) =>
          MealCard(meal: mealList[index],//burası mealcard oluşturduğumuz card yapısındaki yemekleri gösteriyor, örn. mercimek vs.
          onTap: (){ //Bu bizi meal_details.dart dosyasına atıyor
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MealDetail(meal: mealList[index]),
              ),
            );
          },),
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
