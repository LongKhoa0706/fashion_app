import 'package:fashion_app/src/data/model/inventory.dart';
import 'package:fashion_app/src/data/model/product.dart';

class Order {
  String? id;
  Product? product;
 late int quantity;

  Order({this.product, this.quantity = 1});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    product = Product.fromJson(json['product']);
  }
  void toggleDone() {
    quantity += 1;
  }

  Order copyWith({
    Product? product,
    int? quantity,
  }) {
    return Order(
      product: product ?? this.product,
      quantity:  quantity ?? this.quantity,
    );
  }
}
