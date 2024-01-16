import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';

PreferredSize CustomAppBar({List<Widget>? actions, required String title}) =>
    PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
           backgroundColor: AppColors.yellow,
          actions: actions,
          centerTitle: true,
          toolbarHeight: 100,
          title: Text(
            title,
            style: AppStyles.tsBold45.copyWith(
              fontFamily: 'AlumniSans',
               color: AppColors.black,
            ),
          ),
        ));
