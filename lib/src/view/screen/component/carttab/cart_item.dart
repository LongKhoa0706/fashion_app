import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/cart.dart';
import 'package:fashion_app/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final Cart order;

  const CartItem({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<CartViewModel>(context,listen: true);
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      order.product!.urlImage![0]),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.product!.title!,
                    overflow: TextOverflow.ellipsis,
                    style: AppFont.semiBold.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Color: ",
                              style: AppFont.regular.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                  text:  order.product!.inventory![0].color,
                                  style: AppFont.regular.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ]),
                        ]),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Size: ",
                              style: AppFont.regular.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                  text: order.product!.inventory![0].size,
                                  style: AppFont.regular.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ]),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.withOpacity(.1),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: InkWell(
                                onTap: (){
                                  cartViewModel.increQuantity(order,order.product!.inventory![0]);
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                              ),
                              flex: 1,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(order.quantity.toString()),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              child: InkWell(
                                onTap: (){
                                  cartViewModel.deceQuanity(order);
                                },
                                child: Icon(
                                  Icons.remove,
                                  size: 18,
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text("${order.product!.price!} \$")
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
