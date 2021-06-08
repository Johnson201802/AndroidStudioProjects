import 'package:flutter/material.dart';
import 'package:start/pages/splash.dart';
import 'package:start/pages/home.dart';
final routes = {
  '/': (context) => Splash(),
  '/home': (context) => Home()
};

Route onGenerateRoute (RouteSettings settings) {
  final String name = settings.name;
  final Function routeBuilder = routes[name];
  if (routeBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => routeBuilder(context, arguments: settings.arguments)
      );
      return route;
    }else {
      final Route route = MaterialPageRoute(
          builder: (context) => routeBuilder(context)
      );
      return route;
    }
  }
}