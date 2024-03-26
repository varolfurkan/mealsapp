import 'package:mealsapp/models/meal.dart';

const meals = [
  Meal(
    id: "1",
    categoryId: "1",
    name: "Mercimek Çorbası",
    imageUrl:
    "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
    ingredients: ["1 su bardağı kırmızı mercimek", "1 adet soğan", "2 diş sarımsak", "1 yemek kaşığı un", "1 yemek kaşığı tereyağı", "5 su bardağı su", "Tuz", "Karabiber", "Kırmızı pul biber", "1 yemek kaşığı limon suyu"],
    cookingSteps: [
      "1. Mercimeği yıkayıp süzün.",
      "2. Soğanı ve sarımsağı doğrayın.",
      "3. Tencerede tereyağını eritin.",
      "4. Soğan ve sarımsağı tencereye ekleyin, pembeleşene kadar kavurun.",
      "5. Unu ekleyip kavurmaya devam edin.",
      "6. Mercimekleri ve suyu ekleyin, kaynamaya bırakın.",
      "7. Mercimekler yumuşayıncaya kadar pişirin.",
      "8. Piştikten sonra blenderdan geçirip pürüzsüz hale getirin.",
      "9. Tuz, karabiber ve pul biber ile tatlandırın.",
      "10. Servis yapmadan önce limon suyunu ekleyin ve karıştırın."
    ],
    rating: 4.5,
  ),
  Meal(
    id: "2",
    categoryId: "1",
    name: "Ezogelin Çorbası",
    imageUrl:
    "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/ezogelin-corbasi-yemekcom.jpg",
    ingredients: ["1 su bardağı kırmızı mercimek", "1 su bardağı bulgur", "1 adet soğan", "1 yemek kaşığı domates salçası", "1 yemek kaşığı biber salçası", "1 yemek kaşığı tereyağı", "8 su bardağı su", "Tuz", "Karabiber", "Kırmızı pul biber", "Nane"],
    cookingSteps: [
      "1. Mercimeği yıkayıp süzün.",
      "2. Soğanı ve sarımsağı doğrayın.",
      "3. Tencerede tereyağını eritin.",
      "4. Soğanı ve sarımsağı tencereye ekleyin, pembeleşene kadar kavurun.",
      "5. Salçaları ekleyip kavurmaya devam edin.",
      "6. Mercimek, bulgur ve suyu ekleyin, kaynamaya bırakın.",
      "7. Ezogelin çorbası pişene kadar ara sıra karıştırın.",
      "8. Piştikten sonra tuz, karabiber ve pul biber ekleyin, karıştırın.",
      "9. Nane serpip servis yapın."
    ],
    rating: 4,
  ),
];
