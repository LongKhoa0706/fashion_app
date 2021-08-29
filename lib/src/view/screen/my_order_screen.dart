import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/order.dart';
import 'package:fashion_app/src/router/router_path.dart';
import 'package:fashion_app/src/view/screen/component/myorder/order_product.dart';
import 'package:fashion_app/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<CartViewModel>(context,listen: false);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 20,
                  )),
              Text(
                "My Orders",
                style: AppFont.bold.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cartViewModel.listOrder.length,
                  itemBuilder: (_,index){
                    Order order = cartViewModel.listOrder[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, OrderDetailScreens,arguments: order);
                        },
                        child: OrderProduct(
                          order: order,
                        ),
                      )
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
