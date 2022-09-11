import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallpaper/screens/CategoryScreenAndTab.dart';
import 'package:wallpaper/screens/Fragments/HomePage.dart';
import 'package:wallpaper/utils/routes.dart';

import '../models/Data.dart';

class DetailWallpaper extends StatefulWidget {
  late int indexPageChanger;
  DetailWallpaper({Key? key, required this.indexPageChanger}) : super(key: key);

  @override
  State<DetailWallpaper> createState() => _DetailWallpaperState();
}

class _DetailWallpaperState extends State<DetailWallpaper> {

  late double width, height;

  setDimension() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    setDimension();
    return WillPopScope(
      onWillPop: () async {
        if (widget.indexPageChanger==0) {
          Data.homePageCurrentWidget = HomePage();
        } else if (widget.indexPageChanger==2) {
          Data.thirdCurrentWidget = CategoryScreenAndTab(title: "Random Wallpaper");
        }
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {
              setState(() {
                if (widget.indexPageChanger==0) {
                  Data.homePageCurrentWidget = HomePage();
                } else if (widget.indexPageChanger==2) {
                  Data.thirdCurrentWidget = CategoryScreenAndTab(title: "Random Wallpaper");
                }
              });
            },
            child: Icon(
              CupertinoIcons.back,
              color: context.theme.textSelectionColor,
            ),
          ),
          title: Text("Detail", style: TextStyle(color: context.theme.textSelectionColor),),
        ),
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                // 1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // 2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // 3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: height*0.6,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Spacer(),
                InkWell(
                  child: Card(
                    color: Colors.white.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: width*0.13,
                      height: width*0.13,
                      child: Icon(Icons.download_rounded),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  child: Card(
                    color: Colors.white.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: width*0.4,
                      height: width*0.15,
                      child: Row(
                        children: [
                          Spacer(),
                          Image.asset(
                            "assets/img/roller-paint.png",
                            width: width*0.06,
                            color: context.theme.textSelectionColor,
                          ),
                          Text(
                            "APPLY",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: context.theme.textSelectionColor,
                              fontSize: 18
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Spacer()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
