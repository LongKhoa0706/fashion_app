import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/order.dart';
import 'package:flutter/material.dart';

class OrderProduct extends StatelessWidget {
  final Order order;
  const OrderProduct({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int totalProduct = 0;
    // totalProduct += order.listItemCart!.length;
    // print(totalProduct);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.1),
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(2, 2),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(order.listItemCart!.first.product!.urlImage![0]),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8)),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.listItemCart!.first.product!.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFont.bold.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Quantity:",
                                style: AppFont.regular.copyWith(
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: "3",
                                    style: AppFont.semiBold.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Total: ",
                                style: AppFont.regular.copyWith(
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: order.total.toString(),
                                    style: AppFont.semiBold.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    order.createAt.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFont.regular.copyWith(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                    ),
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
