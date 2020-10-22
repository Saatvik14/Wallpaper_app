import 'package:Wallpaper_App/model/category_model.dart';

List<categoriemodel> getcategory() {
  List<categoriemodel> categories = new List();
  categoriemodel categoriesmodel = new categoriemodel();

  categoriesmodel.url = "https://www.pexels.com/photo/grafitti-162379/";
  categoriesmodel.categoryname = "Street Art";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url = "https://www.pexels.com/photo/gazelles-704320/";
  categoriesmodel.categoryname = "Wild Life";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://www.pexels.com/photo/alberta-amazing-attraction-banff-417074/";
  categoriesmodel.categoryname = "Nature";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://www.pexels.com/photo/person-walking-on-the-road-1563256/";
  categoriesmodel.categoryname = "City";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://www.pexels.com/photo/marketing-school-business-idea-21696/";
  categoriesmodel.categoryname = "Motivation";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://www.pexels.com/photo/red-and-black-sports-bike-parking-inside-garage-1231692/";
  categoriesmodel.categoryname = "Bikes";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://www.pexels.com/photo/grey-coupe-on-road-3136673/";
  categoriesmodel.categoryname = "Cars";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  return categories;
}
