import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/const/app_font.dart';
import 'package:fashion_app/src/data/model/address.dart';
import 'package:fashion_app/src/viewmodel/address_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressScroll extends StatefulWidget {
  final Address address;
  final int index;

  const AddressScroll({Key? key, required this.address, required this.index})
      : super(key: key);

  @override
  _AddressScrollState createState() => _AddressScrollState();
}

class _AddressScrollState extends State<AddressScroll> {
  late bool checkbok = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checkbok = Provider.of<AddressViewModel>(context,listen: false).checkBoxAddress(widget.address.addressTitle1!);
  }

  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<AddressViewModel>(context,listen: false);
    return Container(
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
                widget.address.userName!,
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
            widget.address.phone!,
            style: AppFont.regular.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.address.addressTitle1!,
            style: AppFont.regular.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          // CheckboxListTile(
          //     title: Text(
          //       "Use as the shipping address",
          //       style: AppFont.regular.copyWith(
          //         fontSize: 14,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //     controlAffinity: ListTileControlAffinity.leading,
          //     activeColor: Colors.black,
          //     contentPadding: EdgeInsets.all(0.0),
          //     checkColor: Colors.white,
          //     shape: RoundedRectangleBorder(),
          //     value: checkbok,
          //     onChanged: (value) {
          //       setState(() {
          //         checkbok = !checkbok;
          //       });
          //       // cartViewModel.checkBoxAddress(widget.address.addressTitle1!);
          //     }),

          RadioListTile(
              value: checkbok,
              contentPadding: EdgeInsets.all(0.0),
              title: Text(
                "Use as the shipping address",
                style: AppFont.regular.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              groupValue: checkbok,
              onChanged: (value) {
                setState(() {
                  checkbok != checkbok;
                });
              })
        ],
      ),
    );
  }
}
