import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
    Timer(const Duration(seconds: 2), () {});
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
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hear Me!',
                    speed: const Duration(milliseconds: 100),
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      fontSize: 30.0,
                      fontFamily: AppFonts.primary,
                      fontWeight: FontWeight.bold,
                      color: AppColors.bluecolor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
