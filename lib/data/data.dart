import 'package:Wallpaper_App/model/category_model.dart';

String apikey = "563492ad6f91700001000001f008e7a645ca4cccbfb3306eb7813904";

List<categoriemodel> getcategory() {
  List<categoriemodel> categories = new List();
  categoriemodel categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/162379/lost-places-pforphoto-leave-factory-162379.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "Street Art";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "Wild Life";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "Nature";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "City";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/21696/pexels-photo.jpg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "Motivation";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/1231692/pexels-photo-1231692.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "Bikes";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  categoriesmodel.url =
      "https://images.pexels.com/photos/3136673/pexels-photo-3136673.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesmodel.categoryname = "Cars";
  categories.add(categoriesmodel);
  categoriesmodel = new categoriemodel();

  return categories;
}
