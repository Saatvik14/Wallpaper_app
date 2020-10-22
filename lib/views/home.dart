import 'package:Wallpaper_App/data/data.dart';
import 'package:Wallpaper_App/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:Wallpaper_App/model/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<categoriemodel> categories = new List();

  @override
  void initstate() {
    categories = getcategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brand(),
        elevation: 0.0,
      ),
      body: Container(
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
                  decoration: InputDecoration(
                      hintText: "Search", border: InputBorder.none),
                ),
              ),
              Icon(Icons.search),
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 80,
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Categorytile(
                  t: categories[index].categoryname,
                  imgurl: categories[index].url,
                );
              },
            ),
          )
        ]),
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
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.network(imgurl),
          ),
          Container(
            child: Text(t),
          )
        ],
      ),
    );
  }
}
