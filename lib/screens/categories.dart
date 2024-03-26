import 'package:flutter/material.dart';
import 'package:mealsapp/data/category_data.dart';
import 'package:mealsapp/widgets/category_card.dart';



class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    //model olarak data dosyasından gelmeli
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            childAspectRatio: 4/2),
        children: categories.map((category) => CategoryCard(category: category, onTap: (onTap) {})).toList(),
      ),
    );
  }
}
