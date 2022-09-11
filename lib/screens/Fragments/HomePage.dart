import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallpaper/widgets/HomeTopItemForTypes.dart';
import 'package:wallpaper/widgets/WallpaperItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late double width, height;

  setDimension() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    setDimension();
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10,),
          SizedBox(
            height: height*0.225,
            width: double.infinity,
            child: Swiper.children(
              autoplay: true,
              pagination: const SwiperPagination(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.white30,
                      activeColor: Colors.white,
                      size: 10.0,
                      activeSize: 10.0)
              ),
              children: <Widget>[
                HomeTopItemForTypes(index: 0, text: "NATURE", textAlignment: Alignment.topRight, left_m: 0, top_m: 10, right_m: 15, bottom_m: 0, path: "assets/img/home_suggestion/1.jpg"),
                HomeTopItemForTypes(index: 1, text: "ANIME", textAlignment: Alignment.topRight, left_m: 0, top_m: 5, right_m: 10, bottom_m: 0, path: "assets/img/home_suggestion/2.jpg"),
                HomeTopItemForTypes(index: 2, text: "", textAlignment: Alignment.topLeft, left_m: 0, top_m: 0, right_m: 0, bottom_m: 0, path: "assets/img/home_suggestion/3.jpg"),
                HomeTopItemForTypes(index: 3, text: "", textAlignment: Alignment.centerRight, left_m: 0, top_m: 5, right_m: 10, bottom_m: 0, path: "assets/img/home_suggestion/4.jpg"),
                HomeTopItemForTypes(index: 4, text: "AMOLED", textAlignment: Alignment.topRight, left_m: 0, top_m: 35, right_m: 20, bottom_m: 0, path: "assets/img/home_suggestion/5.jpg"),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: ListView(
              primary: false,
              shrinkWrap: true,
              children: [
                Text(
                  "Recently Uploaded...",
                  maxLines: 1,
                  style: TextStyle(
                    color: context.theme.textSelectionColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: 10,),
                StaggeredGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    WallpaperItemHome(indexPageChanger: 0, url: "https://images.unsplash.com/photo-1611068813580-b07ef920964b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://mobimg.b-cdn.net/v3/fetch/3a/3afda9fff30a7e792a9fdf819267a536.jpeg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://wallpaperaccess.com/full/1650634.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://wallpapers.com/images/hd/black-and-green-mobile-cwasr5qzvbxhbdci.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://www.mordeo.org/files/uploads/2021/02/Water-Drops-Red-Background-4K-Ultra-HD-Mobile-Wallpaper-950x1689.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://wallpaperaccess.com/full/5354504.gif"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://image.winudf.com/v2/image1/Y29tLndhbGxwYXBlcmFwcC5sb3ZlaGRtb2JpbGV3YWxscGFwZXJfc2NyZWVuXzBfMTU5MzkxMzI3NV8wODA/screen-0.jpg?fakeurl=1&type=.webp"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/MOBILE_WALLPAPER422-813.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://images.unsplash.com/photo-1610987039121-d70917dcc6f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://www.myfreewalls.com/public/uploads/preview/hd-dark-abstract-gaming-color-mobile-wallpaper-11631140632fnxjwka8sf.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://w0.peakpx.com/wallpaper/826/761/HD-wallpaper-ram-black-fire.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://w0.peakpx.com/wallpaper/575/594/HD-wallpaper-smile-2021-2022-happy-new.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://wallpapercave.com/wp/wp3246755.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnHr9EABXhDygO2VaMqrjmrwU8VRWmWUU1w&usqp=CAU"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://1.bp.blogspot.com/-HxCyi1fvl8k/XdjWWHJIHYI/AAAAAAAAKMI/Hz5jzV0HMfoAOZPQhqdNAKvuUazxxYp1gCLcBGAsYHQ/s1600/Landscape-mobile-wallpaper.jpg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://1.bp.blogspot.com/-N7JSp_PRkuI/XhV5ljsxEUI/AAAAAAAALHA/cevL4UW3PMUzwh1SCIn32uJajD-atR5zwCLcBGAsYHQ/s3840/Color-Abstract-wallpaper.jpeg"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://images.unsplash.com/photo-1633879860828-30532d861528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                    WallpaperItemHome(indexPageChanger: 0, url: "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper306-772.jpg"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
