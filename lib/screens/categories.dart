import 'package:flutter/material.dart';
import 'package:mealsapp/data/category_data.dart';
import 'package:mealsapp/widgets/category_card.dart';



class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),
        actions: [
          IconButton(onPressed: (){
            // TODO favoriler sayfasına geçiş yapsın istiyoruz...
            // TODO Bireysel araştırma => Flutter Provider
          }, icon: const Icon(Icons.favorite),),
        ],
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
