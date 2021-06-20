import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghargharbaazar/widgets/banner.dart';
import 'package:ghargharbaazar/widgets/shop_by.dart';
import 'package:ghargharbaazar/widgets/slider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

final categoryList = [
  "FMCG",
  "General",
  "Electronics",
  "Electrical",
  "Health Care",
  "Diagnostic",
  "Pets",
  "Hand Craft & Gift"
];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late AutoScrollController controller = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      controller: controller,
      children: [
        SizedBox(height: 8),
        autoScrollControl(BannerImage("Banner Image 1"), 1),
        SizedBox(height: 8),
        autoScrollControl(BannerImage("Banner Image 2"), 2),
        SizedBox(height: 8),
        autoScrollControl(HomeScreenSlider(Axis.vertical, [1, 2, 3]), 3),
        SizedBox(height: 8),
        autoScrollControl(BusinessList(controller), 4),
        SizedBox(height: 8),
        autoScrollControl(HomeScreenSlider(Axis.horizontal, [1, 2]), 5),
        SizedBox(height: 8),
        ...categoryList.map(
          (e) => autoScrollControl(
              ShopBy(e, "Banner Image ${categoryList.indexOf(e) + 3}",
                  List<int>.generate(Random().nextInt(8) + 1, (i) => i + 1)),
              categoryList.indexOf(e) + 5),
        ),
      ],
    );
  }

  Widget bottomAppBarIcon(icon, text) {
    return Column(
      children: [Icon(icon), Text(text)],
    );
  }

  Widget autoScrollControl(Widget widget, int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      index: index,
      controller: controller,
      child: widget,
    );
  }
}

class BusinessList extends StatelessWidget {
  final AutoScrollController controller;
  BusinessList(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...categoryList.map(
            (e) => Container(
              margin: EdgeInsets.only(right: 8),
              child: businessItem("", e, categoryList.indexOf(e) + 5),
            ),
          )
        ],
      ),
    );
  }

  Widget businessItem(image, String name, int index) {
    return InkWell(
      onTap: () {
        print(index);
        controller.scrollToIndex(index);
      },
      highlightColor: Colors.green.withOpacity(0.4),
      splashColor: Colors.green.withOpacity(0.4),
      child: Container(
        width: 150,
        color: Colors.grey.withOpacity(0.6),
        child: Stack(
          children: [
            Center(
              child: Text(
                "$name",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade400),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.amber,
                width: 150,
                height: 30,
                child: Center(child: Text(name.toUpperCase())),
              ),
            )
          ],
        ),
      ),
    );
  }
}
