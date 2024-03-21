import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  //dışarıdan alınan kategori modeli rengi ve ismi ile birlikte bu kartta kullanılmalı.
  //ontap aksiyonu dışardan aldığı fonksiyonu haberdar etmeli.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),),
      body: InkWell(
        onTap: (){
          print("Kategoriye tıklandı");
        },
        child: Container(
          decoration: BoxDecoration(

          ),
          padding: const EdgeInsets.all(16.0),
          child: const Text("Kategori 1"),
        ),
      ),
    );
  }
}
