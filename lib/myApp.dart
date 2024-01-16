import 'package:cabto/app/routes/app_routes.dart';
import 'package:cabto/app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      theme: lightMode,
      darkTheme: darkMode,


      getPages: AppPages.pages,
    );

  }
}