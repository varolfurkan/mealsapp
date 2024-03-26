import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/category_details.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final Function(Category) onTap;

  const CategoryCard({super.key, required this.category, required this.onTap});

  //dışarıdan alınan kategori modeli rengi ve ismi ile birlikte bu kartta kullanılmalı.
  //ontap aksiyonu dışardan aldığı fonksiyonu haberdar etmeli.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryDetailScreen(category: category),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.5),
            category.color.withOpacity(0.9),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(
                fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
