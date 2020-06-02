import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_order_app/screens/home/homepage.dart';
import 'package:food_order_app/screens/menu/menu.dart';
import 'package:food_order_app/screens/stalls/stalls.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/stalls':
        var data = settings.arguments as Map;
        return MaterialPageRoute(builder: (_) => Stalls(data));
      case '/menu':
        var data = settings.arguments as Map;
        return MaterialPageRoute(builder: (_) => Menu(data));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}')),
            )
          );
    }
  }
}