import 'package:flutter/material.dart';
import 'package:practice_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
import '../widgets/home_widgets/add_to_cart.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl2.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h24(context)
              .pOnly(top: 25),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.bold.xl4.color(context.accentColor).make(),
                catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    .text
                    .textStyle(context.captionStyle)
                    .make()
                    .p16(),
              ]).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
