import 'package:fashion_app/src/screen/component/carttab/cart_scroll.dart';
import 'package:flutter/material.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: CartScroll(),
      ),
    );
  }
}
