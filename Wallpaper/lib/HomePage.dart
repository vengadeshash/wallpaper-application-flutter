import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:Wallpaper/widget.dart';
import 'package:http/http.dart' as http;
import 'package:Wallpaper/models/Wallpapermodel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WallpaperModel> wallpapers = new List();

  String apikey = "563492ad6f9170000100000133e1361b6bb045af8f084d2bc5d88bad";
  getWallpaper() async {
    var response = await http.get(
        "https://api.pexels.com/v1/curated?page=2&per_page=280",
        headers: {"Authorization": apikey});
    // print("Resp${response.body.toString()}");
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      // print(element);
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    getWallpaper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: co(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xfff5f8fd),
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(horizontal: 24),
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Wallpaper',
                            border: InputBorder.none),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(child: Icon(Icons.search),
                      ),
                      ),
                  ],
                ),
              ),
               SizedBox(height: 16),
             wallpaperList(wallpapers: wallpapers, context: context),       
            ],
          ),
        ),
      ),
    );
  }
}

//563492ad6f9170000100000133e1361b6bb045af8f084d2bc5d88bad
