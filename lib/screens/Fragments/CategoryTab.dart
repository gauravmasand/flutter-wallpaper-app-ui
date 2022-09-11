import 'package:flutter/material.dart';
import 'package:wallpaper/models/Data.dart';

import '../../widgets/CategoryItem.dart';

class CategoryTab extends StatelessWidget {
  late double width, height;
  CategoryTab({Key? key, required this.width, required this.height}) : super(key: key);

  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        CategoryItem(text: "Space",        path: "assets/img/category_img/1.jpg", position: "top"),
        CategoryItem(text: "Colourful",    path: "assets/img/category_img/2.jpg", position: "top"),
        CategoryItem(text: "Abstract",     path: "assets/img/category_img/3.jpg", position: "bottom"),
        CategoryItem(text: "Amoled",       path: "assets/img/category_img/4.jpg", position: "top"),
        CategoryItem(text: "Apple",        path: "assets/img/category_img/5.jpg", position: "top"),
        CategoryItem(text: "Amine",        path: "assets/img/category_img/6.jpg", position: "top"),
        CategoryItem(text: "City",         path: "assets/img/category_img/7.jpg", position: "top"),
        CategoryItem(text: "Nature",       path: "assets/img/category_img/8.jpg", position: "top"),
        CategoryItem(text: "AI",           path: "assets/img/category_img/9.jpg", position: "top"),
        CategoryItem(text: "Wild Life",    path: "assets/img/category_img/10.jpg", position: "top"),
        CategoryItem(text: "",             path: "assets/img/category_img/11.jpg", position: "top"),
        CategoryItem(text: "",             path: "assets/img/category_img/12.jpg", position: "top"),
        CategoryItem(text: "Minimal",      path: "assets/img/category_img/13.jpg", position: "top"),
        CategoryItem(text: "Nature",       path: "assets/img/category_img/14.jpg", position: "top"),
        CategoryItem(text: "Developers",   path: "assets/img/category_img/15.png", position: "top"),
        CategoryItem(text: "Sports",       path: "assets/img/category_img/16.jpg", position: "top"),
        CategoryItem(text: "Super Heroes", path: "assets/img/category_img/17.jpg", position: "top"),
      ],
    );
  }
}
