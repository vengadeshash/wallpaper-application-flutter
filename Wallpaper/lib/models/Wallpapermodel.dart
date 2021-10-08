import 'dart:convert';
List<WallpaperModel> imageModelFromJson(String str) =>
    List<WallpaperModel>.from(json.decode(str).map((x) => WallpaperModel.fromMap(x)));



class WallpaperModel {
  String url;
  String photographer;
  String photographer_url;
  int photographer_id;
  Scrscreen src;

  WallpaperModel(
      {this.url,
      this.photographer,
      this.photographer_id,
      this.photographer_url,
      this.src});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) =>
      WallpaperModel(
        src : Scrscreen.fromMap(jsonData["src"]),
        photographer : jsonData['photography'],
        // photographer_url : jsonData['photography_url'],
        // photographer_id :jsonData['photography_id']
      );
}

class Scrscreen {
  String original;
  String small;
  String portrait;
  String landscape;

  Scrscreen({this.landscape, this.original, this.portrait, this.small});
  factory Scrscreen.fromMap(Map<String, dynamic> jsonData) {
    return Scrscreen(
        original: jsonData['original'],
        small: jsonData['small'],
        portrait: jsonData['portrait'],
        landscape: jsonData['landscape']);
  }
}
