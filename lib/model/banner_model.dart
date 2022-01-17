class BannerModer {
  final String img;
  final String name;
  final String description;
  final double price;

  BannerModer(
      {required this.img,
      required this.name,
      required this.description,
      required this.price});
}

class ItemModel {
  final String img;
  final String name;
  final String description;

  ItemModel({required this.img, required this.name, required this.description});
}

class CardModel {
  final String img;
  final String name;
  final String description;
  final String size;
  final int quantity;
  final double price;
  final String color;

  CardModel({
    required this.img,
    required this.name,
    required this.description,
    required this.price,
    required this.size,
    required this.quantity,
    required this.color
  });
}
