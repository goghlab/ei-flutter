/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:ei_autoshop/core/enums/order_status_enum.dart';
import 'package:ei_autoshop/core/models/order_location_model.dart';
import 'package:ei_autoshop/core/models/order_supplier_model.dart';
import 'package:ei_autoshop/core/models/shoe_model.dart';

class Order {
  int id;
  String code;
  Shoe product;
  OrderStatus status;
  DateTime orderDate;
  DateTime deliveryDate;
  OrderLocation location;
  OrderSupplier supplier;

  Order({
    required this.id,
    required this.code,
    required this.status,
    required this.orderDate,
    required this.deliveryDate,
    required this.product,
    required this.location,
    required this.supplier,
  });
}
