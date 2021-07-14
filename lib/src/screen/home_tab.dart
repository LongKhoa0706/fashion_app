import 'package:fashion_app/src/screen/component/hometab/body_page.dart';
import 'package:fashion_app/src/screen/component/hometab/header_page.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderPage(),
              SizedBox(
                height: 20,
              ),
              BodyPage(),
            ],
          ),
        ),
      ),
    );
  }
}
