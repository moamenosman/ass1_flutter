import 'package:ass1_flutter/OnboardingScrean.dart';
import 'package:ass1_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.PrimaryColor,
      ),
    );
  }
}