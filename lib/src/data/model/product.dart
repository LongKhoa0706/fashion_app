import 'inventory.dart';

class Product {
  String? id;
  String? title;
  String? description;
  double? price;
  int? amountProduct;
  String? createAt;
  bool? isLike;
  List<String>? urlImage;
  String? category;
  List<Inventory>? inventory;

  Product(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.amountProduct,
      this.createAt,
      this.isLike,
      this.urlImage,
      this.category,
      this.inventory});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    amountProduct = json['amountProduct'];
    createAt = json['createAt'];
    isLike = json['isLike'];
    urlImage = json['urlImage'].cast<String>();
    category = json['category'];
    if (json['inventory'] != null) {
      inventory = [];
      json['inventory'].forEach((v) {
        inventory?.add(new Inventory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['amountProduct'] = this.amountProduct;
    data['createAt'] = this.createAt;
    data['isLike'] = this.isLike;
    data['urlImage'] = this.urlImage;
    data['category'] = this.category;
    if (this.inventory != null) {
      data['inventory'] = this.inventory?.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Product copyWith(
      {String? id,
      String? title,
      String? description,
      double? price,
      int? amountProduct,
      int? isLike,
      List<String>? urlImage,
      String? category,
      List<Inventory>? inventory}) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      amountProduct: amountProduct ?? this.amountProduct,
      urlImage: urlImage ?? this.urlImage,
      category: createAt ?? this.category,
      inventory: inventory ?? this.inventory,
    );
  }
}
