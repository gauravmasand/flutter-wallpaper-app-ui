import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../screens/CategoryScreenAndTab.dart';

class HomeTopItemForTypes extends StatelessWidget {
  late int index;
  late String text, path;
  late double left_m, top_m, right_m, bottom_m;
  late Alignment textAlignment;
  HomeTopItemForTypes({Key? key, required this.index, required this.text, required this.textAlignment, required this.path, required this.left_m, required this.top_m, required this.right_m, required this.bottom_m}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index==0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(
            title: "Nature",
          )));
        } else if (index==1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(
            title: "Anime",
          )));
        } else if (index==2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(
            title: "Sports",
          )));
        } else if (index==3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(
            title: "Super Heroes",
          )));
        } else if (index==4) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(
            title: "Amoled",
          )));
        }
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              path,
              fit: BoxFit.fitWidth,
            ),
            Container(
              color: context.backgroundColor.withOpacity(0.2),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(left_m, top_m, right_m, bottom_m),
              child: Wrap(
                children:[
                  Align(
                    alignment: textAlignment,
                    child: Text(
                      "$text",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
