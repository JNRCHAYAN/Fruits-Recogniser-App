import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:fruits_recogniser_app/SecondScreen.dart';

class MysplashScrren extends StatefulWidget {
  const MysplashScrren({super.key});

  @override
  State<MysplashScrren> createState() => _MysplashScrrenState();
}

class _MysplashScrrenState extends State<MysplashScrren> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: SecondScreen(),
      duration: 3000,
      imageSize: 130,
      text: 'Fruits Recogniser APP',
      imageSrc: "assets/images/fruits.png",
      backgroundColor: Colors.white,
    );
  }
}
