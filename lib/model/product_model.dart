class ProductModel {
  final int id;
  final String title;
  final String description;
  final String image;
  final double price;
  final RatingModel rating;

  const ProductModel({
    required this.description,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      description: jsonData['description'],
      id: jsonData['id'],
      image: jsonData['image'],
      price: jsonData['price'],
      title: jsonData['title'],
      rating: RatingModel.fromJson(jsonData['rating'])
    );
  }
}

class RatingModel {
  final double rating;
  final int count;
  RatingModel({required this.count, required this.rating});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(count: jsonData['count'], rating: jsonData['id']);
  }
}
