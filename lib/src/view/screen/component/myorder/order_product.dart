import 'package:fashion_app/src/const/app_font.dart';
import 'package:flutter/material.dart';

class OrderProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8)),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Myrygbhjbjhbjjbjknjknnjkkkjnkjkjjnkjnnnk",
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
                                    text: "11 VND",
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
                    "22-10-2021",
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
