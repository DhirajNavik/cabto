import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/data/values/strings.dart';
import 'package:cabto/app/routes/app_routes.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.yellow.withOpacity(0.9),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Center(
                child: Text(
                  AppStrings.appName,
                  style: AppStyles.tsBold60.copyWith(
                      fontFamily: 'AlumniSans', color: AppColors.black),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:() => Get.toNamed(Routes.HOME),
                child: ListTile(
                  leading: Icon(Icons.home_outlined, color: AppColors.black)
                      .paddingOnly(top: Dimens.gapX0_3),
                  title: Text(
                    "Home",
                    style: AppStyles.tsBold14.copyWith(color: AppColors.black),
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap:()=> Get.toNamed(Routes.BOOKING),
                child: ListTile(
                  leading: Icon(Icons.payment, color: AppColors.black),
                  title: Text(
                    "Booking",
                    style: AppStyles.tsBold14.copyWith(color: AppColors.black),
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.SETTINGS),
                child: ListTile(
                  leading: Icon(Icons.settings, color: AppColors.black),
                  title: Text(
                    "Setting",
                    style: AppStyles.tsBold14.copyWith(color: AppColors.black),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.mail, color: AppColors.black)
                    .paddingOnly(bottom: 15),
                title: Text(
                  AppStrings.gitouch,
                  style: AppStyles.tsBold14.copyWith(color: AppColors.black),
                ),
                subtitle: Text(AppStrings.mail,
                    style: AppStyles.tsBold14.copyWith(color: AppColors.black)),
              ),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}
