import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/home_screen.dart';

class Routes{

  var routes = <String, WidgetBuilder>{

    "/Home": (BuildContext) => HomeScreen(),

  };

  Routes(){
    runApp(
      MaterialApp(
        title: "JERKOFF.CHAT",
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        routes: routes,
    ));
  }
}