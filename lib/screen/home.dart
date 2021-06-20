import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghargharbaazar/screen/Home/basket.dart';
import 'package:ghargharbaazar/screen/Home/categories.dart';
import 'package:ghargharbaazar/screen/Home/dashboard.dart';
import 'package:ghargharbaazar/screen/Home/my_list.dart';
import 'package:ghargharbaazar/screen/Home/search.dart';
import 'package:ghargharbaazar/theme/theme.dart';
import 'package:ghargharbaazar/widgets/app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ggbAppBar(),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TabBarView(
                controller: _controller,
                children: [
                  Dashboard(),
                  Categories(),
                  Search(),
                  MyList(),
                  Basket(),
                ],
              ),
            ),
          ),
          TabBar(
            controller: _controller,
            labelColor: appPrimaryColor.shade900,
            unselectedLabelColor: Colors.grey.shade400,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            onTap: (index) {},
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.dashboard),
                text: "Categories",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "My List",
              ),
              Tab(
                icon: Icon(Icons.shopping_basket),
                text: "Basket",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
