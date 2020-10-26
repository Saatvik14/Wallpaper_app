import 'package:flutter/material.dart';
import 'package:Wallpaper_App/model/wallpapermodel.dart';

Widget brand() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'WallPaper',
        style: TextStyle(color: Colors.black),
      ),
      Text(
        'World',
        style: TextStyle(color: Colors.blue),
      ),
    ],
  );
}

Widget wallapaersList({List<WallpaperModel> wallpapers, context}) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: wallpapers.map((wallpaper) {
          return GridTile(
              child: Container(
            child: Image.network(wallpaper.src.portrait),
          ));
        }).toList(),
      ));
}
