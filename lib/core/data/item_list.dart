import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/item_model.dart';

List<ConvenienceStoreItem> convenienceStoreItemList = [
  ConvenienceStoreItem(
    id: 1,
    sku: "123456",
    brand: "Coca-Cola",
    productName: "Coke",
    price: 1.99,
    category: "Beverages",
    description: "Refreshing cola drink",
    stock: 100,
    images: ["assets/images/coke.png"],
    isFavorite: true.obs,
    isAddedToCartDone: false.obs,
  ),
    ConvenienceStoreItem(
    id: 2,
    sku: "789012",
    brand: "Lays",
    productName: "Potato Chips",
    price: 2.49,
    category: "Snacks",
    description: "Classic potato chips",
    stock: 50,
    images: ["assets/images/chips.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
];
