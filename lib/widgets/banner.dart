import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghargharbaazar/screen/banner_detail.dart';

class BannerImage extends StatelessWidget {
  final String bannerName;
  BannerImage(this.bannerName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(BannerDetailScreen(bannerName)),
      highlightColor: Colors.green.withOpacity(0.4),
      splashColor: Colors.green.withOpacity(0.4),
      child: Container(
        height: 220,
        width: Get.width,
        color: Colors.grey.withOpacity(0.6),
        child: Center(
          child: Text(
            bannerName,
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
