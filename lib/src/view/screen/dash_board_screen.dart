import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/view/screen/cart_tab.dart';
import 'package:fashion_app/src/view/screen/category_tab.dart';
import 'package:fashion_app/src/view/screen/favorite_tab.dart';
import 'package:fashion_app/src/view/screen/personal_tab.dart';

import 'package:fashion_app/src/viewmodel/bottom_navigate_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'home_tab.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<Widget> page = [
    HomeTab(),
    CategoryTab(),
    CartTab(),
    FavoriteTab(),
    PersonalTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var bottomProvider =
        Provider.of<BottomNavigationProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[bottomProvider.currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.primaryColorGray,
          selectedItemColor: AppColors.primaryColorRed,
          currentIndex: bottomProvider.currentIndex,
          onTap: (int index) {
            bottomProvider.changePageTab = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 0
                  ? SvgPicture.asset('assets/image/home_inactive.svg')
                  : SvgPicture.asset('assets/image/home_active.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 1
                  ? SvgPicture.asset('assets/image/categories_inactive.svg')
                  : SvgPicture.asset('assets/image/categories_active.svg'),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 2
                  ? SvgPicture.asset('assets/image/bag_inactive.svg')
                  : SvgPicture.asset('assets/image/bag_active.svg'),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 3
                  ? SvgPicture.asset('assets/image/hear_inactive.svg')
                  : SvgPicture.asset('assets/image/hear_active.svg'),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 4
                  ? SvgPicture.asset('assets/image/profile_inactive.svg')
                  : SvgPicture.asset('assets/image/profile_active.svg'),
              label: 'Personal',
            ),
          ],
        ),
      ),
    );
  }
}
