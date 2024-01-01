/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/add_card/components/add_card_app_bar.dart';
import 'package:ei_autoshop/ui/views/add_card/components/add_card_body.dart';

class AddCardScreen extends BaseStatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AddCardAppBar(),
      body: AddCardBody(),
    );
  }
}
