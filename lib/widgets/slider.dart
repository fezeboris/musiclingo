import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, required this.sliderItems});
  final List<Widget> sliderItems;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliderItems,
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
