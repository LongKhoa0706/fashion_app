import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/order.dart';
import 'package:fashion_app/src/data/model/product.dart';
import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  final Order order;

  const OrderDetailScreen({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 21,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Order Details',
          style: AppFont.semiBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Order No: ${order.orderNumber}",
                  style: AppFont.semiBold.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  order.createAt.toString(),
                  style: AppFont.regular
                      .copyWith(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${order.listItemCart!.length} items',
              style: AppFont.medium.copyWith(color: Colors.black, fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: order.listItemCart!.length,
              shrinkWrap: true,
              padding: EdgeInsets.all(0.0),
              itemBuilder: (_, index) {
                Product product = order.listItemCart![index].product!;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
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
                              image: NetworkImage(product.urlImage!.first),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title!,
                                  style: AppFont.semiBold.copyWith(
                                      color: Colors.black, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  'Mango',
                                  style: AppFont.medium.copyWith(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Color: ",
                                              style: AppFont.regular.copyWith(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:  product.inventory![0].color,
                                                  style:
                                                      AppFont.regular.copyWith(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ]),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Size: ",
                                              style: AppFont.regular.copyWith(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: product.inventory![0].size,
                                                  style:
                                                      AppFont.regular.copyWith(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ]),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Quantity: ",
                                              style: AppFont.regular.copyWith(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: order.listItemCart![index].quantity.toString(),
                                                  style:
                                                      AppFont.regular.copyWith(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ]),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        '${product.price.toString()} VND',
                                        textAlign: TextAlign.right,
                                        style: AppFont.medium.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Order information',
              style: AppFont.medium.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            buildOrderInformation(title: "Shipping Address", description: "akndjkdasnndjnajskn"),

            SizedBox(
              height: 25,
            ),
            buildOrderInformation(title: "Payment method", description: "akndjkdasnndjnajskn"),
            SizedBox(
              height: 25,
            ),
            buildOrderInformation(title: "Total Amount", description: "133"),

          ],
        ),
      ),
    );
  }
  Widget buildOrderInformation({required String title,required String description}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2 ,
          child: Text(
            '$title:',
            style: AppFont.medium.copyWith(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ),

        Expanded(
          flex: 3,
          child: Text(
            description,
            style: AppFont.medium.copyWith(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
