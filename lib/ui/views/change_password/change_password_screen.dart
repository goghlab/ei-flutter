/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/change_password/components/change_password_app_bar.dart';
import 'package:ei_autoshop/ui/views/change_password/components/change_password_body.dart';
import 'package:ei_autoshop/ui/views/change_password/components/change_password_change_now_button.dart';

class ChangePasswordScreen extends BaseStatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ChangePasswordAppBar(),
      body: ChangePasswordBody(),
      floatingActionButton: ChangePasswordChangeNowButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
