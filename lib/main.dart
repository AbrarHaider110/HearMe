import 'package:flutter/material.dart';
import 'package:hear_me/Utils/Routes/routes.dart';
import 'package:hear_me/Utils/Routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.splash
      onGenerateRoute: Routes.generateRoutes(),
    );

  }
}
