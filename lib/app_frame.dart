import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'home.dart';
import 'setup.dart';

class AppFrame extends StatefulWidget {
  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentIndex = 0;
   List colors=[Colors.pink[100],Colors.pink[100]];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        setState(() {
          currentIndex = tabController.index;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          
          color: Colors.pink[200],
          items: <Widget>[
            Icon(
              Icons.home,
              size: 40,
              color: Colors.pink[100],
            ),
            Icon(
              Icons.person,
              size: 40,
              color: Colors.pink[100],
            )
          ],
           backgroundColor: colors[currentIndex],
          onTap: (index) {
            //Handle button tap
            setState(() {
              currentIndex = index;
            });
            tabController.animateTo(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.slowMiddle);
          },
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabController,
          children: <Widget>[
            Home(colors[currentIndex]),
            SetUp(colors[currentIndex]),
          ],
        ));
  }
}
