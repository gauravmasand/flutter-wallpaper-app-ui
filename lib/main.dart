import 'package:flutter/material.dart';
import 'package:wallpaper/screens/Fragments/CategoryTabedScreen.dart';
import 'package:wallpaper/screens/DetailWallpaper.dart';
import 'package:wallpaper/screens/Fragments/HomePage.dart';
import 'package:wallpaper/screens/MainScreen.dart';
import 'package:wallpaper/utils/routes.dart';
import 'package:wallpaper/widgets/AmazingThemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AmazingTheme.lightTheme(context),
      darkTheme: AmazingTheme.darkTheme(context),
      initialRoute: Routes.mainScreen,
      routes: {
        "/" : (context) => MainPage(),
        Routes.mainScreen : (context) => MainPage(),
        Routes.categoryScreen : (context) => WallpaperCategory(),
        Routes.detailScreen : (context) => DetailWallpaper(indexPageChanger: -1,)
      },
    );
  }
}