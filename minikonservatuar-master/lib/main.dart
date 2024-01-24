import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minikonservatuar/splashScreen.dart';
import 'MainPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/image/splash-min.png"), context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir'
      ),
      home: SplashScreen(),
      routes: {
        '/splashScreen' : (context)=>SplashScreen(),
      },
    );
  }
}
