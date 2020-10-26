import 'dart:convert';

class WallpaperModel {
  String photographer;
  String purl;
  int pid;
  SrcModel src;

  WallpaperModel({this.src, this.photographer, this.pid, this.purl});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        src: SrcModel.fromMap(jsonData["src"]),
        purl: jsonData["photographer_url"],
        pid: jsonData["photographer_id"],
        photographer: jsonData["photographer"]);
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;
  SrcModel({this.original, this.portrait, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
        portrait: jsonData["portrait"],
        original: jsonData["original"],
        small: jsonData["small"]);
  }
}
