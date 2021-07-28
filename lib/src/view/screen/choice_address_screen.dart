import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/address.dart';
import 'package:fashion_app/src/router/router_path.dart';
import 'package:fashion_app/src/view/screen/component/choiceaddress/address_scroll.dart';
import 'package:fashion_app/src/viewmodel/address_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChoiceAddressScreen extends StatefulWidget {
  @override
  _ChoiceAddressScreenState createState() => _ChoiceAddressScreenState();
}

class _ChoiceAddressScreenState extends State<ChoiceAddressScreen> {
  bool checkbok = false;


  @override
  Widget build(BuildContext context) {
    final addressViewModel = Provider.of<AddressViewModel>(context,listen: true);

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
          itemCount: addressViewModel.listAddress.length,
          itemBuilder: (_,index){
            Address address = addressViewModel.listAddress[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: AddressScroll(
                index: index,
                address: address,
              )
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
