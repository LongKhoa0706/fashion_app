import 'package:fashion_app/src/view/screen/component/carttab/cart_empty_screen.dart';
import 'package:fashion_app/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'component/carttab/cart_scroll.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartViewModel =Provider.of<CartViewModel>(context,listen: false);

    return SafeArea(
      child: Container(
        child: cartViewModel.listCart.isNotEmpty ? CartScroll(listCart: cartViewModel.listCart) : CartEmptyScreen(),
      ),
    );
  }
}
