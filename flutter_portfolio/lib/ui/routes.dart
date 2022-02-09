import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/home_screen.dart';
import 'package:flutter_portfolio/projects/impacthub_planimetry/planimetry_screen.dart';

class Routes{

  var routes = <String, WidgetBuilder>{

    "/Home": (BuildContext) => HomeScreen(),

  };

  Routes(){
    runApp(
      MaterialApp(
        title: "Portfolio",
        home: PlanimetryScreen(),
        debugShowCheckedModeBanner: false,
        routes: routes,
    ));
  }
}