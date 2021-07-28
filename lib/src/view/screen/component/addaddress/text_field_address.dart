import 'package:fashion_app/src/const/app_font.dart';
import 'package:flutter/material.dart';

class TextFieldAddress extends StatelessWidget {
  final TextEditingController textEditingController;
  final String lableText;

  const TextFieldAddress(
      {Key? key, required this.textEditingController, required this.lableText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(1, 1),
            ),
          ]),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: lableText,
          alignLabelWithHint: true, // center labastyle
          labelStyle: AppFont.regular.copyWith(
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
