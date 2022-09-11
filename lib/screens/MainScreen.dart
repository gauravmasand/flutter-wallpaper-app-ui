import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallpaper/models/Data.dart';
import 'package:wallpaper/screens/Fragments/CategoryTabedScreen.dart';
import 'package:wallpaper/screens/CategoryScreenAndTab.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child:  Scaffold(
        bottomNavigationBar: TabBar(
          indicatorColor: context.cardColor,
          labelColor: Colors.amber,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(icon: Icon(Icons.home), ),
            Tab(icon: Icon(Icons.category_rounded),),
            Tab(icon: Icon(CupertinoIcons.shuffle),),
          ],
          splashBorderRadius: BorderRadius.circular(25),
        ),
        body: TabBarView(
          children: [
            Data.homePageCurrentWidget,
            WallpaperCategory(),
            Data.thirdCurrentWidget,
          ],
        ),
      ),
    );
  }
}
