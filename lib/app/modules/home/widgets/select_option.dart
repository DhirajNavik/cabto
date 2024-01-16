import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';

class CommonBox extends StatelessWidget {
  final String imagepath;
  final String text;
  bool isSelected;
  final double height;

  CommonBox(
      {Key? key,
      required this.isSelected,
      required this.imagepath,
      required this.text,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.screenWidthXThird,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagepath,
            height: height,
          ),
          Column(
            children: [
              Text(text,style: AppStyles.tsBold14.copyWith( color: AppColors.black),),
              Container(
                height: Dimens.gapX0_5,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(Dimens.gapX1),
                        topRight: Radius.circular(Dimens.gapX1)),
                    color: isSelected? Colors.black :null,
              ))
            ],
          )
        ],
      ),
    );
  }
}
