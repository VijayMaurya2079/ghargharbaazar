import 'package:flutter/material.dart';

class QuantityControl extends StatelessWidget {
  final int quantity;
  final Function callback;
  QuantityControl(this.quantity, this.callback);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              callback(quantity == 0 ? 0 : quantity - 1);
            },
            child: Icon(Icons.remove_circle)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("$quantity"),
        ),
        GestureDetector(
            onTap: () {
              callback(quantity + 1);
            },
            child: Icon(Icons.add_circle)),
      ],
    );
  }
}
