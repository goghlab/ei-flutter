import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConvenienceStoreItem {
  int id;
  String sku;
  String brand;
  String productName;
  double price;
  String category;
  String description;
  int stock;
  List<String> images;
  RxBool isFavorite = false.obs;
  RxBool isAddedToCartDone = false.obs;

  ConvenienceStoreItem({
    required this.id,
    required this.sku,
    required this.brand,
    required this.productName,
    required this.price,
    required this.category,
    required this.description,
    required this.stock,
    required this.images,
    required this.isFavorite,
    required this.isAddedToCartDone,
  });
}