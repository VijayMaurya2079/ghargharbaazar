import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghargharbaazar/screen/product_detail.dart';
import 'package:ghargharbaazar/widgets/discount.dart';
import 'package:ghargharbaazar/widgets/quantity_control.dart';

class ProductList extends StatefulWidget {
  final List list;
  ProductList(this.list);

  @override
  _ProductListState createState() => new _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List productList = [];
  @override
  void initState() {
    productList = widget.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: ()=>Get.to(ProuctDetailScreen(widget.list[index])),
          child: Container(
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200, width: 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // image: DecorationImage(
                    //   image: AssetImage(widget.list[index]["url"].toString()),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          "Product ${widget.list[index]}",
                          style: TextStyle(color: Colors.grey.shade200),
                        ),
                      ),
                      Positioned(top: 1, left: 1, child: Discount())
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        "Product ${widget.list[index].toString()}",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: "MRP  ₹ "),
                        TextSpan(
                          text: "400.00",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ])),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: "Price  ₹ "),
                        TextSpan(
                          text: "399.00",
                        ),
                      ])),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: QuantityControl(0, (value) {})),
                          Icon(Icons.add_shopping_cart_sharp),
                          SizedBox(width: 8),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
