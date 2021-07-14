import 'package:fashion_app/src/router/router_path.dart';
import 'package:fashion_app/src/screen/detail_product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routerr{
  static RouteFactory onGenerateRouter = (RouteSettings settings){
    switch(settings.name){
      case DetailProductScreens:
        return _generateMaterialRoute(DetailProductScreen());
      default:
        return _generateMaterialRoute(Center(child: Text("On Unknown Router",style: TextStyle(
          color: Colors.red,
          fontSize: 25,
        ),),));
    }
  };
}

PageTransition _generateMaterialRoute(Widget screen) {
  return PageTransition(child: screen,type: PageTransitionType.fade);
}