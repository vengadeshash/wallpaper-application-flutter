import 'package:Wallpaper/models/Wallpapermodel.dart';
import 'package:flutter/material.dart';

Widget co() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Wallpaper',
        style: TextStyle(color: Colors.black26),
      ),
      Text(''),
      Text(
        '4K',
        style: TextStyle(color: Colors.blueAccent),
      )
    ],
  );
}

Widget wallpaperList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    
    padding: EdgeInsets.symmetric(horizontal: 16),
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
              child:ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(wallpaper.src.portrait,fit: BoxFit.cover,),),
            ),
            );
      }).toList(),

    ),
    
  );
  
}
