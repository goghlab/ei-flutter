/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/chat/components/chat_bottom_bar.dart';
import 'package:ei_autoshop/ui/views/chat/components/chat_list.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: const Column(
        children: [
          Expanded(child: ChatList()),
          ChatBottomBar(),
        ],
      ),
    );
  }
}
