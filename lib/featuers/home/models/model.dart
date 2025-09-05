
class ClotheModel {
  final String title;
  final String image;
  final String description;
  final num price;
  final String category;
  final Map<String, dynamic> rating;

  ClotheModel({
    required this.rating,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.category,
  });

  factory ClotheModel.fromJson(Map<String, dynamic> json) {
    return ClotheModel(
      rating: json['rating'] ?? {'rate': 0, 'count': 0},
      title: json['title'] ?? 'Unknown',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? 0,
      category: json['category'] ?? 'Unknown',
    );
  }
}
