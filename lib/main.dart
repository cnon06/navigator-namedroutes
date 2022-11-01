import 'package:flutter/material.dart';
import 'package:namedroutes/main_page.dart';
import 'package:namedroutes/read_page.dart';
import 'package:namedroutes/yellow_page.dart';

import 'green_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: MainPage(),
      routes: 
      {
        "/" :(context) => const MainPage(),
        "/red_page" :(context) =>const RedPage(),
        "/yellow_page" :(context) =>const YellowPage(),
        "/green_page" :(context) =>const GreenPage(),
      },
      onUnknownRoute: (setings) => MaterialPageRoute(builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
      )),
    );
  }
}
