import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

class MealCardDetails extends StatelessWidget {
  final Meal meal;
  const MealCardDetails({super.key, required this.meal});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(meal.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),

            const SizedBox(height: 10),

            const Text("Gerekli Malzemeler", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            Text(meal.ingredients.join(", "), style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),

            const Text("Nasıl Yapılır?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            for (final step in meal.cookingSteps)
              Text(
                step,
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
