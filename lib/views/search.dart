import 'package:flutter/material.dart';
import 'package:Wallpaper_App/widget/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:Wallpaper_App/data/data.dart';
import 'package:Wallpaper_App/model/wallpapermodel.dart';
import 'dart:convert';

class Search extends StatefulWidget {
  final String searchQuery;
  Search({this.searchQuery});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<WallpaperModel> wallpapers = new List();

  TextEditingController searchController = new TextEditingController();

  getSearchwallpaper(String query) async {
    var response = await http.get(
        "https://api.pexels.com/v1/search?query=$query&per_page=30",
        headers: {"Authorization": apikey});
    //print(response.body.toString());

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
    getSearchwallpaper(widget.searchQuery);
    super.initState();
    searchController.text = widget.searchQuery;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brand(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
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
                      getSearchwallpaper(searchController.text);
                    },
                    child: Container(
                      child: Icon(Icons.search),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 16,
              ),
              wallapaersList(wallpapers: wallpapers, context: context),
            ],
          ),
        ),
      ),
    );
  }
}
