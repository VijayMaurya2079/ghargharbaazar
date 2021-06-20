import 'package:flutter/material.dart';
import 'package:ghargharbaazar/screen/product_list.dart';
import 'package:ghargharbaazar/widgets/banner.dart';

class BannerDetailScreen extends StatefulWidget {
  final banner;
  BannerDetailScreen(this.banner);
  @override
  _BannerDetailScreenState createState() => new _BannerDetailScreenState();
}

class _BannerDetailScreenState extends State<BannerDetailScreen> {
  final List productList = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.banner)),
      body: ListView(
        shrinkWrap: true,
        primary: true,
        children: [
          BannerImage(widget.banner),
          SizedBox(height: 8),
          ProductList(productList)
        ],
      ),
    );
  }
}
