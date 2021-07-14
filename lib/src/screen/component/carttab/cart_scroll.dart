import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/screen/component/carttab/cart_item.dart';
import 'package:flutter/material.dart';

class CartScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_,index){
            return Dismissible(
                key: UniqueKey(),
                background: Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(Icons.delete_outline,color: Colors.white,
                    size: 25,),
                ),
                child: CartItem());
          },
        )
      ),
      bottomNavigationBar: Container(
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
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
                    style: AppFont.medium
                        .copyWith(color: Colors.grey, fontSize: 13,fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1 VND",
                    style: AppFont.semiBold
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
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
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      )),
                  onPressed: () {},
                  child: Text('Checkout'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
