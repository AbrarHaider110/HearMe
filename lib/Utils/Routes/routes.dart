import 'package:flutter/material.dart';
import 'package:hear_me/Utils/Routes/routes_name.dart';
import 'package:hear_me/View/main_menu.dart';
import 'package:hear_me/View/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => SplashView());
      case RoutesName.mainMenu:
        return MaterialPageRoute(builder: (context) => MainMenu());
      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  Scaffold(body: Center(child: Text("No Routes Defined"))),
        );
    }
  }
}
