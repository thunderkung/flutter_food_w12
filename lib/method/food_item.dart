class Fooditem {
  final int id;
  final String name;
  final int price;
  final String image;

  Fooditem(
      {required this.id,
      required this.name,
      required this.price,
      required this.image});

  @override
  String toString() {
    // TODO: implement toString
    var out ="ชื่อเมนู : $name\nราคา : $price บาท";
    return out;
  }
}
