import 'package:cabto/app/data/values/dimens.dart';
import 'package:cabto/app/data/values/images.dart';
import 'package:cabto/app/data/values/strings.dart';
import 'package:cabto/app/modules/booking/controller/booking_controller.dart';
import 'package:cabto/app/modules/booking/widgets/vehicle_info_card.dart';
import 'package:cabto/app/routes/app_routes.dart';
import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:cabto/widgets/common_button.dart';
import 'package:cabto/widgets/common_chip.dart';
import 'package:cabto/widgets/common_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingView extends GetView<BookingController> {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Expanded(
            child: Container(
              width: Dimens.screenWidth,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.bangalore),
                      fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.offAllNamed(Routes.HOME);
                  },
                  child: const Icon(
                    Icons.keyboard_backspace_rounded,
                    color: AppColors.black,
                    size: 40,
                  ).paddingSymmetric(
                      vertical: Dimens.gapX3, horizontal: Dimens.gapX1),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Image.asset(
                AppImages.marked,
                width: 20,
              ),
              const Flexible(
                child: CommonInputField(
                  labelText: AppStrings.source,
                  initialValue: AppStrings.bangalore,
                  bgColor: AppColors.transparent,
                ),
              ),
            ],
          ).paddingOnly(left: Dimens.gapX1),
          const Divider().paddingOnly(left: Dimens.screenWidthXEight, bottom: Dimens.gapX0_7),
          Row(
            children: [
              Image.asset(
                AppImages.unmarked,
                width: 20,
              ),
              const Flexible(
                child: CommonInputField(
                  labelText: AppStrings.destination,
                  initialValue: AppStrings.mysuru,
                  bgColor: AppColors.transparent,
                ),
              ),
            ],
          ).paddingOnly(left: Dimens.gapX1),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                AppStrings.suggestions,
                style:  AppStyles.tsBold14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppStrings.pickup,
                    style:  AppStyles.tsBold12,
                  ),
                  Chip(
                      avatar: const Icon(
                        Icons.calendar_month_outlined,
                      ),
                      label: Text(
                        controller.dateTime.value,
                        style: AppStyles.tsBold12,
                        overflow: TextOverflow.ellipsis,
                      ))
                ],
              )
            ],
          ).paddingSymmetric(horizontal: Dimens.paddingX3),
          Expanded(
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: controller.vehicleList.length,
                itemBuilder: (context, index) {
                  var data = controller.vehicleList[index];
                  return GestureDetector(
                    onTap: () {
                      controller.onSelectedVehicleList(index);
                    },
                    child: VehicleInfoCard(
                      elevationValue: data["cardElevation"],
                      carImage: data["carImage"],
                      carName: data["carName"],
                      carDetails: data["carDetails"],
                      price: data["carPrice"],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: Dimens.gapX1,
                ),
              ),
            ),
          ),
          Obx(
            () => CustomClips(
              firstTitle: AppStrings.myself,
              secondTitle: AppStrings.others,
              onFirstTap: controller.onFirstClipSelected,
              onSecondTap: controller.onSecondClipSelected,
              isfirstTrue: controller.isFirstClipSelected.value,
              isSecondtrue: controller.isSecondClipSelected.value,
            ).paddingOnly(left: Dimens.paddingX3, top: Dimens.paddingX2),
          ),
          CommonButton(
              text: AppStrings.book,
              buttonFunction: () {
                customDialog(context);
              })
        ]));
  }

  Future customDialog(context) {
    return showDialog<Widget>(
        context: context,
        builder: (context) {
          return AlertDialog(
            titlePadding: EdgeInsets.only(
                left: Dimens.screenHeightX22, top: Dimens.paddingX4),
            title: Text(AppStrings.thanks),
            alignment: Alignment.bottomCenter,
            actionsPadding: EdgeInsets.all(Dimens.gapX2),
            actionsOverflowAlignment: OverflowBarAlignment.center,
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Get.offAllNamed(Routes.HOME);
                  },
                  child: Text(
                    AppStrings.success,
                    style: AppStyles.tsMedium16,
                  )),
              Divider(),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    AppStrings.cancle,
                    style: AppStyles.tsMedium16,
                  ))
            ],
          );
        });
  }
}
