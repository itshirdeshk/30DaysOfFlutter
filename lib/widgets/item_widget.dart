import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown.shade50,
      shadowColor: Colors.brown,
      child: ListTile(
        onTap: () => print("${item.name} pressed"),
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price}",
          style:
              const TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
