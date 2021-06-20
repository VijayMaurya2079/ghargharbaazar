import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghargharbaazar/screen/home.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ghar Ghar Baaza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AutoScrollController controller = AutoScrollController();
  List<int> list = [1, 2, 3, 4, 5, 6];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          controller: controller,
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.scrollToIndex(4);
                    },
                    child: Text("Jump To 6")),
                ElevatedButton(
                    onPressed: () {
                      controller.scrollToIndex(5);
                    },
                    child: Text("Jump To 6")),
                ElevatedButton(
                    onPressed: () {
                      controller.scrollToIndex(6);
                    },
                    child: Text("Jump To 6"))
              ],
            ),
            ...list
                .map(
                  (e) => AutoScrollTag(
                    key: ValueKey(list.indexOf(e)),
                    index: list.indexOf(e),
                    controller: controller,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: Colors.grey,
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child:
                          Center(child: Text("Container ${list.indexOf(e)}")),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
