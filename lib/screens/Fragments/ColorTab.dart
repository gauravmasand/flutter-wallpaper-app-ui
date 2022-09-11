import 'package:flutter/material.dart';
import 'package:wallpaper/screens/CategoryScreenAndTab.dart';

import '../../models/Data.dart';

class ColorTab extends StatelessWidget {
  const ColorTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(left: 5, right: 5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: Data.colorModel.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreenAndTab(title: "${Data.colorModel[index].colorName}")));
          },
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children:[
              Card(
                elevation: 2,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                color: Data.colorModel[index].color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15, left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "${Data.colorModel[index].colorName}",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      color: Data.colorModel[index].textColor,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ]
          ),
        );
      },
    );
  }
}
