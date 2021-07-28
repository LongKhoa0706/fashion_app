import 'package:fashion_app/src/data/model/address.dart';
import 'package:flutter/material.dart';

class AddressViewModel with ChangeNotifier{
  final List<Address> listAddress = [];
  bool valuee = false;

  void addAddress(Address address){
    listAddress.add(address);
    print(listAddress.length);
    notifyListeners();
  }

  bool checkBoxAddress(String title){
    int a = listAddress.indexWhere((element) => element.addressTitle1 == title);
    if(a !=-1){
      valuee != valuee;
      notifyListeners();
      return true;
    }
    valuee != valuee;

    notifyListeners();
    return false;
  }
}