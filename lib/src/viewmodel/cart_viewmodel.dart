import 'package:fashion_app/src/data/model/inventory.dart';
import 'package:fashion_app/src/data/model/order.dart';
import 'package:fashion_app/src/data/model/product.dart';
import 'package:flutter/cupertino.dart';

class CartViewModel extends ChangeNotifier {
  List<Order> listCart = [];
  int curr = 1;
  bool isFound = true;
  String message = '';
  double total = 0;

  addToCart(Product product, Inventory inventoryy) {
    if (listCart.isEmpty) {
      listCart.add(
        Order().copyWith(
          product: product.copyWith(inventory: [inventoryy]),
        ),
      );
    } else {
      for(int i = 0 ; i < listCart.length ; i ++){
        var index =   listCart[i].product?.inventory?.indexWhere((element) => element.id == inventoryy.id);
        debugPrint("INDEX ${index}");
        if(index != -1){
          if (listCart[i].quantity < inventoryy.stockQuantity!) {
            listCart[i].quantity ++;
          }  else{
            message = "Số lượng không đủ";
          }
        }else{
          isFound = false;
        }
      }

      if(!isFound){
        print(inventoryy.id);
        listCart.add(
          Order().copyWith(
            product: product.copyWith(inventory: [inventoryy]),
          ),
        );
        notifyListeners();
      }
    }
    calculatePrice();

    notifyListeners();
  }

  void calculatePrice(){
    total = 0;
    listCart.forEach((element) {
      total += element.product!.price! * element.quantity;
    });
    print(total);
    notifyListeners();
  }

  Future increQuantity(Order order,Inventory inventory) async {
    if(order.quantity < inventory.stockQuantity!){
      order.quantity ++;
    }else{
       message = "Số lượng ko đủ";
    }
    calculatePrice();
    notifyListeners();
  }

  void deceQuanity(Order order){
    if(order.quantity > 1){
      order.quantity --;
    }else{

    }
    calculatePrice();
    notifyListeners();
  }

  void removeCart(int index){
    listCart.removeAt(index);
    calculatePrice();
    notifyListeners();
  }

}
