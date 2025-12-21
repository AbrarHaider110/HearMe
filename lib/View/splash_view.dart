import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hear_me/Utils/Routes/routes_name.dart';
import 'package:hear_me/res/colors.dart';
import 'package:hear_me/res/fonts.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.mainMenu);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/logo.png", width: 250, height: 250),
            const SizedBox(height: 20),
            Text(
              'Hear Me!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: AppFonts.primary,
                fontWeight: FontWeight.bold,
                color: AppColors.bluecolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
