import 'dart:convert';
import 'package:Wallpaper_App/data/data.dart';
import 'package:Wallpaper_App/model/wallpapermodel.dart';
import 'package:Wallpaper_App/views/category.dart';
import 'package:Wallpaper_App/views/search.dart';
import 'package:Wallpaper_App/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:Wallpaper_App/model/category_model.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<categoriemodel> categories = new List();
  List<WallpaperModel> wallpapers = new List();
  TextEditingController searchController = new TextEditingController();

  gettrendingwallpaper() async {
    var response = await http.get("https://api.pexels.com/v1/curated",
        headers: {"Authorization": apikey});

    Map<String, dynamic> jsondata = jsonDecode(response.body);
    jsondata["photos"].forEach((element) {
      //print(element);
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    gettrendingwallpaper();
    categories = getcategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brand(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xff5f8fd),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        hintText: "Search", border: InputBorder.none),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Search(
                                  searchQuery: searchController.text,
                                )));
                  },
                  child: Container(
                    child: Icon(Icons.search),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15),
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Categorytile(
                    t: categories[index].categoryname,
                    imgurl: categories[index].url,
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            wallapaersList(wallpapers: wallpapers, context: context)
          ]),
        ),
      ),
    );
  }
}

class Categorytile extends StatelessWidget {
  final String imgurl;
  final String t;
  Categorytile({@required this.imgurl, @required this.t});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Category(
                        categoryName: t.toLowerCase(),
                      )));
        },
        child: Container(
            margin: EdgeInsets.only(right: 4),
            child: Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgurl,
                  height: 50,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 50,
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  t,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              )
            ])));
  }
}
