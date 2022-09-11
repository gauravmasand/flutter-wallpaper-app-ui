import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallpaper/screens/CategoryScreenAndTab.dart';

class CategoryItem extends StatelessWidget {
  late String path, text, position;
  CategoryItem({Key? key, required this.text, required this.path, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(title: "$text")));
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 200,
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              path,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: position=="top" ? EdgeInsets.only(bottom: 100) : EdgeInsets.only(top: 100),
                padding: EdgeInsets.fromLTRB(10,3,10,3),
                decoration: BoxDecoration(
                  color: text!="" ? Colors.black.withOpacity(0.25) : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "$text",
                  maxLines: 1,
                  style: TextStyle(
                    color: context.theme.accentColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
