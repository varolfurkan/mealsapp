import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/widgets/meal_card_details.dart';

class MealDetail extends StatelessWidget {
  final Meal meal;

  const MealDetail({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.name),
      ),
      body: MealCardDetails(meal: meal), //burada da meal_card_detail.dart dosyasındaki tasarıma göre detay sayfasını gösteriyoruz.
    );
  }
}
