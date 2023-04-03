import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:practice_1/models/catalog.dart';
import 'package:practice_1/widgets/home_widgets/catalog_header.dart';
import 'package:practice_1/widgets/home_widgets/catalog_list.dart';
import 'package:practice_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assests/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                CatalogHeader(),
                CatalogList().expand(),
              ],
            )),
      ),
    );
  }
}
