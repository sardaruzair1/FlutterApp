class Item {
  String name;
  int price;
  int qty;
  bool isfav;
Item({
  required this.name,
  required this.price,
  required this.qty, 
  this.isfav = false,
});
}
