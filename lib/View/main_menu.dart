import 'package:flutter/material.dart';
import 'package:hear_me/res/Components/listtile.dart';
import 'package:hear_me/res/colors.dart';
import 'package:hear_me/res/fonts.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              Text(
                "Welcome to HearMe",
                style: TextStyle(
                  fontFamily: AppFonts.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: AppColors.bluecolor,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "Your bridge to better communication",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppFonts.secondary,
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
              ),

              const SizedBox(height: 15),

              Image.asset("assets/images/main.png", width: 220, height: 220),
              const SizedBox(height: 20),
              CustomWidget(
                title: "Live Translation",
                des: "Voice to text instantly real-time",
                leading: Icon(Icons.mic_outlined, color: AppColors.bluecolor),
                onTap: () {},
              ),

              CustomWidget(
                title: "Gesture Learning",
                des: "Explore Sign language library",
                leading: Icon(
                  Icons.sign_language_outlined,
                  color: AppColors.bluecolor,
                ),
                onTap: () {},
              ),

              CustomWidget(
                title: "Gesture Quiz",
                des: "Test Sign language knowledge",
                leading: Icon(Icons.quiz_outlined, color: AppColors.bluecolor),
                onTap: () {},
              ),

              CustomWidget(
                title: "Seamless Chat",
                des: "Chat with real-time messaging",
                leading: Icon(Icons.chat_outlined, color: AppColors.bluecolor),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
