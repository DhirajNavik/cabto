import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Function() buttonFunction;

  const CommonButton({
    Key? key,
    required this.text,
    required this.buttonFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        width: Dimens.screenWidth,
        height: Dimens.screenHeightX16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.scaleX3),
            color: AppColors.black),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: AppStyles.tsBold22.copyWith(color:Colors.white),
            )),
      ),
    ).paddingSymmetric(horizontal: Dimens.gapX1_6, vertical: Dimens.gapX1);
  }
}
