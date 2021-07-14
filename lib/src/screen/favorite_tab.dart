import 'package:fashion_app/src/screen/component/favoritetab/favorite_scroll.dart';
import 'package:flutter/material.dart';

class FavoriteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: FavoriteScroll(),
      ),
    );
  }
}
