import 'package:flutter/material.dart';
import 'package:Wallpaper/Screens/HomePage.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper 4K',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      
      home: HomePage(),
    );
  }
}
