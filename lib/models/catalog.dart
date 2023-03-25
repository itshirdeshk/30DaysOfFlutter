class Item {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Item 001",
      name: "iPhone 12 Pro",
      description: "Apple iPhone 12th Gen",
      price: 999,
      color: "#33505a",
      image: "assests/images/hey.png")
];
