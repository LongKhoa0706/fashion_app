import 'package:fashion_app/src/screen/component/favoritetab/favorite_item.dart';
import 'package:flutter/material.dart';

class FavoriteScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 190/300),
        itemCount: 10,
        itemBuilder: (_, index) {
          return FavoriteItem();
        },
      ),
    );
  }
}
