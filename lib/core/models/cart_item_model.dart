/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:get/get.dart';

import 'package:ei_autoshop/core/models/shoe_model.dart';

class CartItem {
  int? id;
  Shoe shoe;
  RxInt piece;

  CartItem({
    required this.shoe,
    required this.piece,
    this.id,
  });
}
