import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/const/app_font.dart';
import 'package:flutter/material.dart';

class ChoiceOption extends StatefulWidget {
  final List<String> listSize;
  final Function(String) onSelectCallBack;

  const ChoiceOption(
      {Key? key, required this.listSize, required this.onSelectCallBack})
      : super(key: key);

  @override
  _ChoiceOptionState createState() => _ChoiceOptionState();
}

class _ChoiceOptionState extends State<ChoiceOption> {
  String selectChoice = '';

  @override
  Widget build(BuildContext context) {
    if (widget.listSize.isNotEmpty) {
      return Wrap(
        runSpacing: 8,
        spacing: 10,
        children: widget.listSize.map((e) {
          return InkWell(
            onTap: () {
              setState(() {
                selectChoice = e;
                widget.onSelectCallBack(selectChoice);
              });
            },
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: selectChoice == e
                    ? AppColors.primaryColorRed.withOpacity(.9)
                    : Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: .1),
                // color:  ? Colors.red : Colors.black, width: .2),
              ),
              child: Center(
                child: Text(
                  e,
                  style: AppFont.medium.copyWith(
                      fontSize: 16,
                      color: e == selectChoice ? Colors.white : Colors.black),
                ),
              ),
            ),
          );
        }).toList(),
      );
    } else {
      return Text("NO");
    }
  }
}
