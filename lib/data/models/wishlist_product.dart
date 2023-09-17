class Product {
  final int? id;
  final String? imageUrl;
  final String? itemCompany;
  final String? itemName;
  final String? price;
  final String? originalPrice;
  bool favourite;

  Product({
    this.id,
     this.itemCompany,
     this.itemName,
     this.price,
     this.originalPrice,
     this.imageUrl,
    this.favourite = false
  });
}
