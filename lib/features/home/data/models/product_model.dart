// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  final int id;
  final String image;
  final String name;
  final double price;
  bool isFav;
  bool isSelected;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.isFav,
    required this.isSelected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'img': image,
      'name': name,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      image: map['image'] as String,
      name: map['name'] as String,
      price: map['price'] as double,
      isFav: map['isFav'] as bool,
      isSelected: map['isSelected'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
