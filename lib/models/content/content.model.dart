import 'package:equatable/equatable.dart';

class ContentModel extends Equatable {
  final String id;
  final String name;
  final String size;
  final String image;
  final String color;
  final double amount;

  const ContentModel({
    required this.id,
    required this.name,
    required this.size,
    required this.image,
    required this.color,
    required this.amount,
  });

  factory ContentModel.fromJson(Map<String, dynamic> data) {
    final id = data["id"] as String;
    final name = data["name"] as String;
    final size = data["size"] as String;
    final image = data["image"] as String;
    final color = data["color"] as String;
    final amount = data["amount"] as double;

    return ContentModel(
      id: id,
      name: name,
      size: size,
      image: image,
      color: color,
      amount: amount,
    );
  }

  @override
  List<Object?> get props => [id, name, size, image, color, amount];
}
