import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/category_card.dart';



// global state- global state management
class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> categories = ["Kategori 1", "Kategori 2", "Kategori 3"];
    //model olarak data dosyasından gelmeli
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2),
        children: [
          categories.map((e) => CategoryCard()).toList(),
        ],
      ),
    );
  }
}
