import 'package:flutter/material.dart';
import 'package:wallpaper/models/ColorModel.dart';
import 'package:wallpaper/screens/Fragments/HomePage.dart';

import '../screens/CategoryScreenAndTab.dart';
import '../widgets/CategoryItem.dart';

class Data {
  static List<CategoryItem> categoryItem = [
    CategoryItem(text: "Space",        path: "assets/img/category_img/1.jpg", position: "top"),
    CategoryItem(text: "Colourful",    path: "assets/img/category_img/2.jpg", position: "top"),
    CategoryItem(text: "Abstract",     path: "assets/img/category_img/3.jpg", position: "top"),
    CategoryItem(text: "Amoled",       path: "assets/img/category_img/4.jpg", position: "top"),
    CategoryItem(text: "Apple",        path: "assets/img/category_img/5.jpg", position: "top"),
    CategoryItem(text: "Amine",        path: "assets/img/category_img/6.jpg", position: "top"),
    CategoryItem(text: "City",         path: "assets/img/category_img/7.jpg", position: "top"),
    CategoryItem(text: "Nature",       path: "assets/img/category_img/8.jpg", position: "top"),
    CategoryItem(text: "AI",           path: "assets/img/category_img/9.jpg", position: "top"),
    CategoryItem(text: "Wild Life",    path: "assets/img/category_img/10.jpg", position: "top"),
    CategoryItem(text: "Motivation",   path: "assets/img/category_img/11.jpg", position: "top"),
    CategoryItem(text: "Games",        path: "assets/img/category_img/12.jpg", position: "top"),
    CategoryItem(text: "Minimal",      path: "assets/img/category_img/13.jpg", position: "top"),
    CategoryItem(text: "Nature",       path: "assets/img/category_img/14.jpg", position: "top"),
    CategoryItem(text: "Developers",   path: "assets/img/category_img/15.png", position: "top"),
    CategoryItem(text: "Sports",       path: "assets/img/category_img/16.jpg", position: "top"),
    CategoryItem(text: "Super Heroes", path: "assets/img/category_img/17.jpg", position: "top"),
  ];

  static List<ColorModel> colorModel = [
    ColorModel("BLACK", Colors.black, Colors.white),
    ColorModel("INDIGO", Colors.indigo, Colors.white),
    ColorModel("BROWN", Colors.brown, Colors.white),
    ColorModel("CYAN", Colors.cyan, Colors.white),
    ColorModel("GOLDEN", Colors.amberAccent, Colors.white),
    ColorModel("GREEN", Colors.green, Colors.white),
    ColorModel("GREY", Colors.grey, Colors.white),
    ColorModel("LIME", Colors.lime, Colors.white),
    ColorModel("ORANGE", Colors.orange, Colors.white),
    ColorModel("PINK", Colors.pink, Colors.white),
    ColorModel("PURPLE", Colors.purple, Colors.white),
    ColorModel("RED", Colors.red, Colors.white),
    ColorModel("SILVER", Color(0xC0C0C0), Colors.white),
    ColorModel("WHITE", Colors.white, Colors.black),
    ColorModel("YELLOW", Colors.yellow, Colors.white),
  ];

  static Widget homePageCurrentWidget = HomePage();
  static Widget thirdCurrentWidget = CategoryScreenAndTab(title: "Random Wallpaper");

  // static List<Color> color = [Colors.black, Colors.indigo, Colors.brown, Colors.cyan, Colors.amberAccent, Colors.green, Colors.grey, Colors.lime, Colors.orange, Colors.pink, Colors.purple, Colors.red, Color(0xC0C0C0), Colors.white, Colors.yellow];
}