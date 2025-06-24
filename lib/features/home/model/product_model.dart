import 'package:get/get.dart';

class ProductModel {
  String title;
  String des;
  double price;
  String distance;
  String images;
  RxInt count;

  ProductModel({
    required this.title,
    required this.des,
    required this.distance,
    required this.price,
    required this.images,
    int count = 1,
  }) : count = count.obs;
}