import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  List<String> listImage =  [
    'https://www.girlteencare.com/wp-content/uploads/2021/04/dd51d83736d0741a3a78ad68e8077805.jpg',
    'https://www.efasheen.com/wp-content/uploads/2020/12/Pantone-Colors.png',
    'https://thevou.com/wp-content/uploads/2021/05/Current-fashion-trends-wtvox.com-Boiler-suits-01.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 300,
          viewportFraction: 1.0,
          autoPlay: true,
          enlargeCenterPage: false,
        // autoPlay: false,
      ),
      items: listImage.map((e) => Image.network(e,fit: BoxFit.cover,)).toList(),
    );
  }
}
