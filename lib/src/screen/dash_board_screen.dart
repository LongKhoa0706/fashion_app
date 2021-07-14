import 'package:fashion_app/src/const/app_colors.dart';
import 'package:fashion_app/src/provider/bottom_navigate_provider.dart';
import 'package:fashion_app/src/screen/cart_tab.dart';
import 'package:fashion_app/src/screen/category_tab.dart';
import 'package:fashion_app/src/screen/favorite_tab.dart';
import 'package:fashion_app/src/screen/home_tab.dart';
import 'package:fashion_app/src/screen/personal_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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
    var bottomProvider = Provider.of<BottomNavigationProvider>(context,listen: true);
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
          selectedItemColor:AppColors.primaryColorRed ,
          currentIndex: bottomProvider.currentIndex,
          onTap: (int index){
            bottomProvider.changePageTab =index;
          },
          items: [
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 0 ? SvgPicture.asset('assets/image/home_inactive.svg') : SvgPicture.asset('assets/image/home_active.svg'),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: bottomProvider.currentIndex != 1  ?  SvgPicture.asset('assets/image/categories_inactive.svg') : SvgPicture.asset('assets/image/categories_active.svg') ,
              title: Text('Category'),
            ),
            BottomNavigationBarItem(
              icon:  bottomProvider.currentIndex != 2 ? SvgPicture.asset('assets/image/bag_inactive.svg') : SvgPicture.asset('assets/image/bag_active.svg'),
              title: Text('Cart'),
            ),
            BottomNavigationBarItem(
              icon:  bottomProvider.currentIndex != 3 ?SvgPicture.asset('assets/image/hear_inactive.svg') : SvgPicture.asset('assets/image/hear_active.svg'),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem(
              icon:  bottomProvider.currentIndex != 4 ? SvgPicture.asset('assets/image/profile_inactive.svg') : SvgPicture.asset('assets/image/profile_active.svg'),
              title: Text('Personal'),
            ),
          ],
        ),
      ),
    );
  }
}
