class Meal{
  final String id;
  final String categoryId;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> cookingSteps;
  final double rating;

  const Meal(
      {
        required this.id,
        required this.categoryId,
        required this.name,
        required this.imageUrl,
        required this.ingredients,
        required this.rating,
        required this.cookingSteps
      });
}