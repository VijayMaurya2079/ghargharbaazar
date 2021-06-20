import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghargharbaazar/widgets/banner.dart';

class ShopBy extends StatelessWidget {
  final String category;
  final String banner;
  final List list;
  ShopBy(this.category, this.banner, this.list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Shop By $category",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        GridView.builder(
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: list.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => InkWell(
            onTap: () {},
            highlightColor: Colors.green.withOpacity(0.4),
            splashColor: Colors.green.withOpacity(0.4),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.withOpacity(0.3),
                    Colors.white.withOpacity(0.5)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(color: Colors.grey.shade400, width: 0.5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 2,
                    right: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.shade700,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Up to", style: TextStyle(fontSize: 9)),
                          Row(
                            children: [
                              Text(
                                "40",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Column(children: [
                                Text("%", style: TextStyle(fontSize: 9)),
                                Text("OFF", style: TextStyle(fontSize: 9))
                              ])
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Product",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 30,
                      width: Get.width / 3,
                      color: Colors.transparent,
                      padding: EdgeInsets.all(4),
                      child: Center(
                        child: Text("Category ${list[index]}"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        BannerImage(banner),
      ],
    );
  }
}
