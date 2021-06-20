import 'package:flutter/material.dart';
import 'package:ghargharbaazar/widgets/banner.dart';
import 'package:ghargharbaazar/widgets/discount.dart';
import 'package:ghargharbaazar/widgets/quantity_control.dart';

class ProuctDetailScreen extends StatefulWidget {
  final product;
  ProuctDetailScreen(this.product);

  @override
  _ProuctDetailScreenState createState() => new _ProuctDetailScreenState();
}

class _ProuctDetailScreenState extends State<ProuctDetailScreen> {
  List list = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product ${widget.product}")),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              BannerImage("Product Image"),
              Positioned(top: 2, right: 2, child: Discount())
            ],
          ),
          SizedBox(height: 8),
          Container(
            height: 120,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                ...list.map(
                  (e) => Container(
                    margin: EdgeInsets.only(right: 2),
                    width: 120,
                    height: 120,
                    color: Colors.grey.withOpacity(0.4),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: AssetImage("assets/11.jpg"),
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    child: Center(child: Text("Image $e")),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Product ${widget.product}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "₹ 400",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    TextSpan(text: "  "),
                    TextSpan(text: "₹ 399")
                  ])),
                ),
                QuantityControl(0, (value) {}),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Lorem  Ipsumis  simply  dummy  text  of  the  printing  and  typesetting industry.  Lorem Ipsum  has  been  the  industry's  standard  dummy  text  ever  since  the  1500s,  when  an unknown printer took a galley of type and scrambled it to make a type specimen book. It has  survived  not  only  five  centuries,  but  also  the  leap  into  electronic typesetting, remaining  essentially  unchanged.  It  was  popularised  in  the  1960s  with  the  release  of Letraset  sheets  containing  Lorem  Ipsum  passages,  and  more  recently  with  desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
