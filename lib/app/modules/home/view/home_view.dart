import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/data/values/images.dart';
import 'package:cabto/app/data/values/strings.dart';
import 'package:cabto/app/modules/home/controller/home_controller.dart';
import 'package:cabto/app/modules/home/widgets/rental_widget.dart';
import 'package:cabto/app/modules/home/widgets/select_option.dart';
import 'package:cabto/app/routes/app_routes.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/widgets/common_appbar.dart';
import 'package:cabto/widgets/common_button.dart';
import 'package:cabto/widgets/common_chip.dart';
import 'package:cabto/widgets/common_text_form_field.dart';
import 'package:cabto/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: AppStrings.appName),
      drawer: HeaderDrawer(),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: Container(
                width: Dimens.screenWidth,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          AppImages.mysuru,
                        ),
                        fit: BoxFit.cover)),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: CommonInputField(
                    bgColor: AppColors.white,
                    textColor: AppColors.black,
                    initialValue: AppStrings.shreeji,
                    prefixIcon: Icon(
                      Icons.search,
                       color: AppColors.black,
                      size: 26,
                    ),
                  ),
                ).paddingSymmetric(
                    vertical: Dimens.gapX2_4, horizontal: Dimens.gapX1_6),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: Dimens.screenWidth,
                    color: Colors.white,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: controller.selectCityCab,
                          child: CommonBox(
                            text: AppStrings.citycab,
                            imagepath: AppImages.cityCab,
                            isSelected: controller.isCityCab.value,
                            height: Dimens.screenHeightX19,
                          ),
                        ),
                        GestureDetector(
                          onTap: controller.selectRental,
                          child: CommonBox(
                            text: AppStrings.rental,
                            imagepath: AppImages.rental,
                            isSelected: controller.isRental.value,
                            height: Dimens.screenHeightX24,
                          ).paddingOnly(top: Dimens.gapX1),
                        ),
                        GestureDetector(
                          onTap: controller.selectOutstation,
                          child: CommonBox(
                            text: AppStrings.outstation,
                            imagepath: AppImages.outstation,
                            isSelected: controller.isOutStation.value,
                            height: Dimens.screenHeightX24,
                          ).paddingOnly(top: Dimens.gapX1),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Card(
                    surfaceTintColor: AppColors.white,
                    elevation: 4,
                    child: Column(children: [
                      controller.isRental.value?
                      RentalWidget(

                      ):Container(),
                      CommonInputField(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 28,
                        ).paddingOnly(top: Dimens.gapX0_4),
                        hintText: AppStrings.enterDestination,
                        labelText: AppStrings.onlyDestination,
                        initialValue: AppStrings.mysuru,
                      ).paddingOnly(bottom: Dimens.gapX0_5),
                      controller.isOutStation.value == true
                          ? CustomClips(
                              firstTitle: AppStrings.oneway,
                              secondTitle: AppStrings.roundTrip,
                              isfirstTrue: controller.isOneWay.value,
                              isSecondtrue: controller.isRoundTrip.value,
                              onFirstTap: controller.selectOneWay,
                              onSecondTap: controller.selectRoundTrip,
                            ).paddingOnly(left: Dimens.gapX0_3)
                          : Container(),
                      controller.isOutStation.value &&
                              controller.isRoundTrip.value
                          ?  GestureDetector(
                            onTap: ()=>
                              controller.onDateTime(),
                            child: CommonInputField(
                              controller: controller.dateTimeController,
                                hintText:AppStrings.returnDate,
                                prefixIcon: Icon(Icons.calendar_month_outlined),
                                isEnabled: false,
                              ).paddingOnly(top: Dimens.gapX0_7),
                          )
                          : Container()
                    ]).paddingSymmetric(
                        horizontal: Dimens.gapX1_4, vertical: Dimens.gapX1_4),
                  ).paddingSymmetric(horizontal: Dimens.gapX1_6),
                  CommonButton(
                    text: AppStrings.next,
                    buttonFunction: () {
                      Get.toNamed(Routes.BOOKING);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
