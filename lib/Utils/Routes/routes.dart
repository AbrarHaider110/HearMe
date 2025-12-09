import 'package:flutter/material.dart';
import 'package:hear_me/Utils/Routes/routes_name.dart';
import 'package:hear_me/View/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => SplashView());
      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  Scaffold(body: Center(child: Text("No Routes Defined"))),
        );
    }
  }
}
