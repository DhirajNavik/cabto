import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleInfoCard extends StatelessWidget {
  final String carImage;
  final String carName;
  final String carDetails;
  final String price;
  int elevationValue;

  VehicleInfoCard(
      {super.key,
      required this.elevationValue,
      required this.carImage,
      required this.carName,
      required this.carDetails,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.white,
      elevation: elevationValue+0.0,
      child: Column(children: [
        Row(
          children: [
            Image.asset(
              carImage,
              height: 35,
            ).paddingOnly(top: Dimens.paddingX1, right: Dimens.paddingX3),
            Text(carName,style: AppStyles.tsBold16),
            Spacer(),
            Text(price,style:AppStyles.tsBold14.copyWith(color:AppColors.green))
          ],
        ).paddingSymmetric(horizontal: Dimens.paddingX2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(carDetails,style:AppStyles.tsBold14.copyWith(overflow: TextOverflow.ellipsis),)),
            Icon(Icons.info_outline_rounded)
          ],
        ).paddingOnly(left: Dimens.paddingX6_5,right: Dimens.paddingX1)
      ]).paddingSymmetric(
          horizontal: Dimens.paddingX2, vertical: Dimens.paddingX2),
    ).paddingSymmetric(
        horizontal: Dimens.paddingX3, vertical: Dimens.paddingX2);
  }
}
