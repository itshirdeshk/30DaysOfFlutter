import 'package:flutter/material.dart';
import 'package:practice_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyThemes.creamColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.color(Colors.black).bold.make(),
        ));
  }
}
