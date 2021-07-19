import 'package:flutter/material.dart';

import 'favorite_item.dart';

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
