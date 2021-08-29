import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/cart.dart';
import 'package:fashion_app/src/router/router_path.dart';
import 'package:fashion_app/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_item.dart';

class CartScroll extends StatelessWidget {
  final List<Cart> listCart;
  const CartScroll({Key? key, required this.listCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<CartViewModel>(context, listen: true);
    int priceShip = 15;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextHeader(title: "Shipping address"),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.1),
                        blurRadius: 4,
                        spreadRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "MR JOIN",
                          style: AppFont.medium.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, ChoiceAddressScreens);
                          },
                          child: Text(
                            "Change",
                            style: AppFont.regular.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: AppColors.primaryColorRed),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "123456678",
                      style: AppFont.regular.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "194 ngyen cong tru",
                      style: AppFont.regular.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0.0),
                itemCount: listCart.length,
                itemBuilder: (_, index) {
                  Cart order = listCart[index];
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (value) {
                      cartViewModel.removeCart(index);
                    },
                    background: Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    child: CartItem(
                      order: order,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  buildTextHeader(title: "Payment"),
                  Spacer(),
                  Text(
                    "Change",
                    style: AppFont.regular.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: AppColors.primaryColorRed),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "Order",
                    style: AppFont.medium.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: AppColors.primaryColorGray),
                  ),
                  Spacer(),
                  Text(
                    "${cartViewModel.total} \$",
                    style: AppFont.semiBold.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Delivery",
                    style: AppFont.medium.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: AppColors.primaryColorGray),
                  ),
                  Spacer(),
                  Text(
                    "$priceShip \$",
                    style: AppFont.semiBold.copyWith(
                      fontWeight: FontWeight.w600,

                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Summary",
                    style: AppFont.medium.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.primaryColorGray),
                  ),
                  Spacer(),
                  Text(
                    "${cartViewModel.total + priceShip} \$",
                    style: AppFont.semiBold.copyWith(
                      fontWeight: FontWeight.w600,

                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: AppFont.medium.copyWith(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${cartViewModel.total + priceShip} VND",
                    style: AppFont.semiBold
                        .copyWith(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryColorRed,
                      textStyle: AppFont.medium.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  onPressed: (){
                    cartViewModel.checkOutCart();
                    // Navigator.pushNamed(context, OrderSuccessScreens),
                  },
                  child: Text('Checkout'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildTextHeader({required String title}) {
    return Text(
      title,
      style:
      AppFont.semiBold.copyWith(fontWeight: FontWeight.w600, fontSize: 16),
    );
  }
}
