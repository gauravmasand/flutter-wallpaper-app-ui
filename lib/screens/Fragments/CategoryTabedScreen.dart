import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallpaper/screens/Fragments/ColorTab.dart';
import 'package:wallpaper/widgets/CategoryItem.dart';

import 'CategoryTab.dart';

class WallpaperCategory extends StatefulWidget {
  const WallpaperCategory({Key? key}) : super(key: key);

  @override
  State<WallpaperCategory> createState() => _WallpaperCategoryState();
}

class _WallpaperCategoryState extends State<WallpaperCategory> {

  late double width, height;

  setDimension() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    setDimension();
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            isScrollable: true,
            indicatorColor: context.cardColor,
            labelColor: context.theme.textSelectionColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(child: Text("Category", style: TextStyle(fontSize: 35),),),
              Tab(child: Text("Colors", style: TextStyle(fontSize: 35),),),
            ],
            splashBorderRadius: BorderRadius.circular(25),
          ),
          body: TabBarView(
            children: [
              CategoryTab(width: width, height: height),
              ColorTab(),
            ],
          ),
        ),
      ),
    );
  }
}
