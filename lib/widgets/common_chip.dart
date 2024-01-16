import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomClips extends StatelessWidget {
  final Function()? onFirstTap;
  final Function()? onSecondTap;
  final String firstTitle;
  final String secondTitle;
  bool isfirstTrue;
  bool isSecondtrue;

  CustomClips(
      {super.key,
      this.onFirstTap,
      this.onSecondTap,
      required this.firstTitle,
      required this.secondTitle,
      this.isfirstTrue=false,
      this.isSecondtrue=false,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onFirstTap,
          child: Chip(
                  color: isfirstTrue
                      ? MaterialStatePropertyAll(
                          AppColors.grey.withOpacity(0.2))
                      : null,
                  avatar: isfirstTrue ? const Icon(Icons.done_rounded,) : null,
                  label: Text(firstTitle,style: AppStyles.tsBold14))
              ,
        ),
        GestureDetector(
          onTap: onSecondTap,
          child: Chip(
                  color: isSecondtrue
                      ? MaterialStatePropertyAll(
                          AppColors.grey.withOpacity(0.2))
                      : null,
                  avatar: isSecondtrue ? const Icon(Icons.done_rounded) : null,
                  label: Text(secondTitle ,style:AppStyles.tsBold14))
              .paddingOnly(left: Dimens.gapX1),
        )
      ],
    );
  }
}
