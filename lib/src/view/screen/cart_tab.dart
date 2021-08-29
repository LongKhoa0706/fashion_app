import 'package:fashion_app/src/view/screen/component/carttab/cart_empty_screen.dart';
import 'package:fashion_app/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'component/carttab/cart_scroll.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        child: Consumer<CartViewModel>(
          builder: (BuildContext context, value, Widget? child) {
            return value.listCart.isNotEmpty ? CartScroll(listCart: value.listCart) : CartEmptyScreen() ;
          },),
      ),
    );
  }
}
