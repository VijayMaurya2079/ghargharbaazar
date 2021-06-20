import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ghargharbaazar/widgets/banner.dart';

class HomeScreenSlider extends StatelessWidget {
  final Axis direction;
  final List list;

  HomeScreenSlider(this.direction, this.list);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        pageSnapping: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        viewportFraction: 0.99,
        scrollDirection: direction,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return BannerImage("Slider Image $i");
          },
        );
      }).toList(),
    );
  }
}
