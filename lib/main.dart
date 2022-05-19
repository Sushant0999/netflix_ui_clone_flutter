import 'package:flutter/material.dart';
import 'package:netflix/pages/downloads.dart';
import 'package:netflix/pages/homePage.dart';
import 'package:netflix/pages/hot.dart';
import 'package:netflix/pages/mainScreen.dart';
import 'package:netflix/pages/menu.dart';
import 'package:netflix/pages/myList.dart';
import 'package:netflix/pages/search.dart';
import 'package:netflix/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        MyRoutes.mainScreen: (context) => MainScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.searchRoute: (context) => Search(),
        MyRoutes.downloadRoute: (context) => Downloads(),
        MyRoutes.menuRoute: (context) => Menu(),
        MyRoutes.hotRoute: (context) => Hot(),
        MyRoutes.myList: (context) => MyList(),
      },
    );
  }
}
