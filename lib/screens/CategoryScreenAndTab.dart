import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/WallpaperItem.dart';

class CategoryScreenAndTab extends StatefulWidget {
  late String title;
  CategoryScreenAndTab({Key? key, required this.title}) : super(key: key);

  @override
  State<CategoryScreenAndTab> createState() => _CategoryScreenAndTabState();
}

class _CategoryScreenAndTabState extends State<CategoryScreenAndTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          maxLines: 1,
          style: TextStyle(
            fontSize: 40,
            overflow: TextOverflow.ellipsis,
            color: context.theme.textSelectionColor
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children:[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: StaggeredGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                WallpaperItemHome(indexPageChanger: 2, url: "https://images.unsplash.com/photo-1611068813580-b07ef920964b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://mobimg.b-cdn.net/v3/fetch/3a/3afda9fff30a7e792a9fdf819267a536.jpeg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://wallpaperaccess.com/full/1650634.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://wallpapers.com/images/hd/black-and-green-mobile-cwasr5qzvbxhbdci.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://www.mordeo.org/files/uploads/2021/02/Water-Drops-Red-Background-4K-Ultra-HD-Mobile-Wallpaper-950x1689.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://wallpaperaccess.com/full/5354504.gif"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://image.winudf.com/v2/image1/Y29tLndhbGxwYXBlcmFwcC5sb3ZlaGRtb2JpbGV3YWxscGFwZXJfc2NyZWVuXzBfMTU5MzkxMzI3NV8wODA/screen-0.jpg?fakeurl=1&type=.webp"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/MOBILE_WALLPAPER422-813.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://images.unsplash.com/photo-1610987039121-d70917dcc6f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://www.myfreewalls.com/public/uploads/preview/hd-dark-abstract-gaming-color-mobile-wallpaper-11631140632fnxjwka8sf.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://w0.peakpx.com/wallpaper/826/761/HD-wallpaper-ram-black-fire.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://w0.peakpx.com/wallpaper/575/594/HD-wallpaper-smile-2021-2022-happy-new.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://wallpapercave.com/wp/wp3246755.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnHr9EABXhDygO2VaMqrjmrwU8VRWmWUU1w&usqp=CAU"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://1.bp.blogspot.com/-HxCyi1fvl8k/XdjWWHJIHYI/AAAAAAAAKMI/Hz5jzV0HMfoAOZPQhqdNAKvuUazxxYp1gCLcBGAsYHQ/s1600/Landscape-mobile-wallpaper.jpg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://1.bp.blogspot.com/-N7JSp_PRkuI/XhV5ljsxEUI/AAAAAAAALHA/cevL4UW3PMUzwh1SCIn32uJajD-atR5zwCLcBGAsYHQ/s3840/Color-Abstract-wallpaper.jpeg"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://images.unsplash.com/photo-1633879860828-30532d861528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                WallpaperItemHome(indexPageChanger: 2, url: "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper306-772.jpg"),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
