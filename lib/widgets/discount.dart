import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Column(children: [
                Text("%", style: TextStyle(fontSize: 9)),
                Text("OFF", style: TextStyle(fontSize: 9))
              ])
            ],
          )
        ],
      ),
    );
  }
}
