/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:ei_autoshop/ui/views/account/components/account_app_bar.dart';
import 'package:ei_autoshop/ui/views/account/components/account_body.dart';
import 'package:ei_autoshop/ui/views/account/components/account_save_changes_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AccountAppBar(),
      body: AccountBody(),
      floatingActionButton: AccountSaveChangesButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
