import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

PreferredSizeWidget ggbAppBar() {
  return AppBar(
    centerTitle: true,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesome5Solid.car_side, size: 13),
            SizedBox(width: 8),
            Text(
              "Earliest delivery in 1 day*",
              style: TextStyle(fontSize: 11),
            )
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lucknow,Uttar Pradesh",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(width: 8),
            Icon(Icons.edit, size: 14),
          ],
        )
      ],
    ),
    actions: [
      Icon(
        Ionicons.md_person_circle_outline,
        size: 40,
      )
    ],
    bottom: PreferredSize(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            hintText: "Search Product",
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.arrow_forward),
          ),
        ),
      ),
      preferredSize: Size(Get.width, 50),
    ),
  );
}
