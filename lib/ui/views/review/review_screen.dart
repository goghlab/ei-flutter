/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/models/shoe_model.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/review/components/review_app_bar.dart';
import 'package:ei_autoshop/ui/views/review/components/review_body.dart';

class ReviewScreen extends BaseStatelessWidget {
  final Shoe product;

  const ReviewScreen({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReviewAppBar(),
      body: ReviewBody(product: product),
    );
  }
}
