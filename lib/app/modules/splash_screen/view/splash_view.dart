import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cabto/app/data/values/strings.dart';
import 'package:cabto/app/modules/splash_screen/controller/splash_controller.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController>{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(width: 10,color: AppColors.white)
          ),
          
          width: 294.0,
          child: TextLiquidFill(
            loadDuration: const Duration(seconds: 3),
            waveDuration: const Duration(seconds: 1),
            loadUntil: 0.9,
            text: AppStrings.appName,
            waveColor: AppColors.black,
            boxBackgroundColor: AppColors.yellow,
            textStyle: const TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),
            boxHeight: 120.0,
          ),
        ),
      ),
    );
  }
}
