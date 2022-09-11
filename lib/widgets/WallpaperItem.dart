import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallpaper/screens/DetailWallpaper.dart';

import '../models/Data.dart';

class WallpaperItemHome extends StatefulWidget {

  late String url;
  late int indexPageChanger;
  WallpaperItemHome({Key? key, required this.indexPageChanger, required this.url}) : super(key: key);

  @override
  State<WallpaperItemHome> createState() => _WallpaperItemHomeState();
}

class _WallpaperItemHomeState extends State<WallpaperItemHome> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.indexPageChanger==0) {
          Data.homePageCurrentWidget = DetailWallpaper(indexPageChanger: 0);
        } else  if (widget.indexPageChanger==2) {
          Data.thirdCurrentWidget =  DetailWallpaper(indexPageChanger: 2);
        }
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(
          widget.url,
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: CircularProgressIndicator(
                  color: context.accentColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
