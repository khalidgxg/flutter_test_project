class Recipe {
  String label;
  String imageUrl;
// TODO: Add servings and ingredients here
  Recipe(
    this.label,
    this.imageUrl,
  );
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/image.jpeg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/image2.jpeg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/image3.jpeg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/image4.jpeg',
    ),
  ];
}
// TODO: Add Ingredient() here
