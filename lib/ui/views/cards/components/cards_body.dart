
import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/cards/components/cards_card_info.dart';
import 'package:ei_autoshop/ui/views/cards/components/cards_card_list.dart';
import 'package:ei_autoshop/ui/views/cards/components/cards_form.dart';

class CardsBody extends BaseStatelessWidget {
  const CardsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardsCardList(),
          CardsCardInfo(),
          CardsForm(),
        ],
      ),
    );
  }
}
