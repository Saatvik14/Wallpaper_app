import 'package:Wallpaper_App/views/image.dart';
import 'package:flutter/material.dart';
import 'package:Wallpaper_App/model/wallpapermodel.dart';

Widget brand() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      children: <TextSpan>[
        TextSpan(text: 'Wallpaper', style: TextStyle(color: Colors.black)),
        TextSpan(text: 'World', style: TextStyle(color: Colors.blue)),
      ],
    ),
  );
}

Widget wallapaersList({List<WallpaperModel> wallpapers, context}) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 10.0,
        children: wallpapers.map((wallpaper) {
          return GridTile(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageView(
                      imgurl: wallpaper.src.portrait,
                    ),
                  ));
            },
            child: Hero(
              tag: wallpaper.src.portrait,
              child: Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(wallpaper.src.portrait),
              )),
            ),
          ));
        }).toList(),
      ));
}
