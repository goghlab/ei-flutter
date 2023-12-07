import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/shoe_model.dart';

List<Shoe> shoeList = [
  Shoe(
    id: 1,
    stock: 12,
    sku: "DEF456",
    brand: "Adidas",
    model: "UltraBoost",
    colors: [Colors.pink, Colors.grey, Colors.lightGreen],
    gender: "Women's",
    retailPrice: 179.99,
    releaseYear: "2023",
    outerMaterial: "Primeknit",
    lining: "Textile",
    sole: "Continental Rubber",
    images: ["assets/images/coke.png"],
    isFavorite: true.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 2,
    sku: "ABC123",
    brand: "Nike",
    model: "Air Max",
    colors: [Colors.teal, Colors.lightGreen, Colors.red],
    gender: "Unisex",
    retailPrice: 149.99,
    releaseYear: "2023",
    stock: 5,
    outerMaterial: "Mesh, Synthetic",
    lining: "Textile",
    sole: "Rubber",
    discountRate: 20,
    images: [
      "assets/images/coke.png",
      "assets/images/coke.png",
    ],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
];
