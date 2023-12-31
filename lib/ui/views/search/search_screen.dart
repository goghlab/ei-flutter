/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/utils/base/base_statefull.dart';
import 'package:ei_autoshop/ui/views/search/components/search_app_bar.dart';
import 'package:ei_autoshop/ui/views/search/components/search_body.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: SearchBody(),
    );
  }
}
