


import 'package:cabto/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightMode  = ThemeData(
  brightness: Brightness.light
  ,
  colorScheme: ColorScheme.light(
    background: AppColors.white,
    primary: AppColors.black,
    secondary: AppColors.black,
    
    inversePrimary: AppColors.black,
  )
);

ThemeData darkMode  = ThemeData(
  brightness: Brightness.dark
  ,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary:AppColors.white,
    secondary: AppColors.white
    ,
    inversePrimary: AppColors.white
  )
);