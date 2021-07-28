import 'package:fashion_app/src/data/model/address.dart';
import 'package:fashion_app/src/data/model/inventory.dart';
import 'package:fashion_app/src/data/model/product.dart';

class Cart {
  String? id;
  Address? address;
  Product? product;
  late int quantity;
   String? createAt;
   double? totalAmount;


  Cart({this.product, this.quantity = 1,this.id,this.address,this.createAt,this.totalAmount});

  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    product = Product.fromJson(json['product']);
    address = Address.fromJson(json['address']);
    createAt = json['create_at'];
    totalAmount = json['total_amount'];

  }

  void toggleDone() {
    quantity += 1;
  }

  Cart copyWith({
    Product? product,
    int? quantity,
  }) {
    return Cart(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }
}
