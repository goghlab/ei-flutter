/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/models/shoe_model.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/ui/views/detail/components/detail_add_to_cart_button.dart';
import 'package:ei_autoshop/ui/views/detail/components/detail_app_bar.dart';
import 'package:ei_autoshop/ui/views/detail/components/detail_body.dart';

class DetailScreen extends StatefulWidget {
  final Shoe shoe;

  const DetailScreen({required this.shoe, Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    BaseController.detailController.changeColor(widget.shoe.colors.first);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBar(),
      body: DetailBody(shoe: widget.shoe),
      floatingActionButton: SlideInRight(
        from: 10,
        duration: const Duration(milliseconds: 800),
        child: DetailAddToCartButton(
          shoeId: widget.shoe.id,
          retailPrice: widget.shoe.discountRate != null
              ? BaseController.homeController
                  .calculateDiscount(
                      widget.shoe.retailPrice, widget.shoe.discountRate!)
                  .toStringAsFixed(2)
              : widget.shoe.retailPrice.toString(),
        ),
      ),
    );
  }
}
