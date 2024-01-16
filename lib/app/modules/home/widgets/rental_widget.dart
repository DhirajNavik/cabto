import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/data/values/strings.dart';
import 'package:cabto/app/modules/home/controller/home_controller.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RentalWidget extends StatelessWidget {

  final HomeController controller =HomeController();
  RentalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.selectPackage,style: AppStyles.tsBold16,).paddingOnly(left: Dimens.paddingX2),
        GridView.count(
          physics: BouncingScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(
            controller.packageList.length,
            (index) {
              return  GestureDetector(
                onTap: (){
                  controller.onSelectedPackageList(index);
                  print(index);
                },
                child: Obx(
                  ()=> Card(
                        surfaceTintColor: AppColors.white,
                        elevation: controller.packageList[index]["cardElevation"]+0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text(controller.packageList[index]["time"],style: AppStyles.tsBold14,).paddingOnly(right: Dimens.gapX0_5),
                          Text(controller.packageList[index]["distance"],style: AppStyles.tsMedium14.copyWith(color: AppColors.grey),)
                        ]),
                      ),
                ),
              );
            },
          ),
        ).paddingOnly(bottom: Dimens.paddingX3,top:Dimens.paddingX1)
      ],
    );
  }
}
