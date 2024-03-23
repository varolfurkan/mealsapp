import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

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
        onTap(category);
        print("${category.name} Tıklandı");
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orange.withOpacity(0.7),
            Colors.orange.withOpacity(0.3),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            category.name,
            style: TextStyle(
                fontSize: 20,
              color: category.color,
            ),
          ),
        ),
      ),
    );
  }
}
