import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/router/router_path.dart';
import 'package:flutter/material.dart';

class ChoiceAddressScreen extends StatefulWidget {
  @override
  _ChoiceAddressScreenState createState() => _ChoiceAddressScreenState();
}

class _ChoiceAddressScreenState extends State<ChoiceAddressScreen> {
  bool checkbok = false;

  void _afternoonOutdoorChanged(bool value) => setState(() => checkbok = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Shipping Address",
          style: AppFont.semiBold.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.1),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(2, 2),
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Janne",
                          style: AppFont.medium.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Edit",
                          style: AppFont.regular.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: AppColors.primaryColorRed),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "194 ngyen cong tru",
                      style: AppFont.regular.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Phuong 12 quan 1",
                      style: AppFont.medium.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CheckboxListTile(
                        title:Text(
                          "Use as the shipping address",
                          style: AppFont.regular.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.black,
                        contentPadding: EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        shape:RoundedRectangleBorder(
                        ),
                        value: checkbok,
                        onChanged: (value) {
                          setState(() {
                            checkbok = !checkbok;
                          });
                        }),
                  ],
                ),
              ),
            );
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AddAddressScreens),
        backgroundColor: Colors.black,
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
