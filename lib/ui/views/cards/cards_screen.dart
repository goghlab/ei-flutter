import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/cards/components/cards_app_bar.dart';
import 'package:ei_autoshop/ui/views/cards/components/cards_body.dart';

class CardsScreen extends BaseStatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CardsAppBar(),
      body: CardsBody(),
    );
  }
}
