import 'package:bd_tender_task/features/home/model/product_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  TextEditingController searchController = TextEditingController();


  RxList<ProductModel> products = <ProductModel>[
    ProductModel(title: "Spacy fresh crab",des: "dfasfd", distance: "12", price: 500, images: "assets/images/demo_pic.png"),
    ProductModel(title: "Spacy fresh crab",des:"dsfadsf" , distance: "8", price: 200, images: "assets/images/demo_pic.png"),
    ProductModel(title: "Spacy fresh crab",des:"dsfadsf" , distance: "8", price: 300, images: "assets/images/demo_pic.png"),
  ].obs;
}