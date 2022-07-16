import 'package:stor_app_api/models/rating.dart';

class ProdectModel {
  int? id;
  String? title;
  num? price;
  String? description;

  String? image;
  Rating? rating;

  ProdectModel(
      {
        required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  ProdectModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'] ;
    description = json['description'];
    image = json['image'];
    rating =
        json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    data['image'] = this.image;

    return data;
  }
}
