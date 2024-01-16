import 'package:cabto/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  RxBool isCityCab = true.obs;
  RxBool isRental = false.obs;
  RxBool isOutStation = false.obs;

  RxBool isOneWay = true.obs;
  RxBool isRoundTrip = false.obs;

  var selectedDate = DateTime.now().obs;

  RxList packageList = RxList([
    {"time": "8 Hr", "distance": "80KM", "cardElevation": 0},
    {"time": "6 Hr", "distance": "70KM", "cardElevation": 0},
    {"time": "9 Hr", "distance": "85KM", "cardElevation": 0},
    {"time": "9 Hr", "distance": "89KM", "cardElevation": 0},
  ]);

  RxBool elevationValue = false.obs;
  TextEditingController dateTimeController = TextEditingController();

  onDateTime() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        initialDate: selectedDate.value);
    if (dateTime != null) {
      selectedDate.value = dateTime;
      dateTimeController.text=dateTime.toString().substring(0,10);
    }
  }

  onSelectedPackageList(index) {
    for (var i in packageList) {
      i['cardElevation'] = 0;
    }
    packageList[index]['cardElevation'] = 10;
    packageList.refresh();
  }

  void selectOneWay() {
    isOneWay.value = true;
    isRoundTrip.value = false;
  }

  void selectRoundTrip() {
    isOneWay.value = false;
    isRoundTrip.value = true;

    print('hey');
  }

  selectCityCab() {
    isCityCab.value = true;
    isRental.value = false;
    isOutStation.value = false;
    print(isCityCab);
  }

  selectRental() {
    isCityCab.value = false;
    isRental.value = true;
    isOutStation.value = false;
  }

  selectOutstation() {
    isCityCab.value = false;
    isRental.value = false;
    isOutStation.value = true;
  }
}
