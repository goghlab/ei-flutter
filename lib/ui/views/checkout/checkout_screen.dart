/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/ui/views/checkout/components/checkout_app_bar.dart';
import 'package:ei_autoshop/ui/views/checkout/components/checkout_body.dart';
import 'package:ei_autoshop/ui/views/checkout/components/checkout_pay_now_button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CheckoutAppBar(),
      body: CheckoutBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CheckoutPayNowButton(),
    );
  }
}
