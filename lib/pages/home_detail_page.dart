import 'package:flutter/material.dart';
import 'package:practice_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyThemes.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl2.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyThemes.brownishColor),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Buy".text.make())
                .wh(100, 50)
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
              color: Colors.white,
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.bold.xl4.color(MyThemes.brownishColor).make(),
                catalog.desc.text.xl.textStyle(context.captionStyle).make(),
              ]).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
