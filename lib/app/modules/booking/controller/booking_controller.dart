import 'package:cabto/base/base_controller.dart';
import 'package:get/get.dart';

class BookingController extends BaseController {
  RxList vehicleList = RxList([
    {
      "carName": "Sedan",
      "carImage": "assets/images/sedan.png",
      "carPrice": "₹ 3729",
      "carDetails": "Marutia Swift Dzire Or Similar",
      "cardElevation": 0
    },
    {
      "carName": "SUV",
      "carImage": "assets/images/toyota.png",
      "carPrice": "₹ 5832",
      "carDetails": "Toyota innova 6+1 Or Similar",
      "cardElevation": 0
    },
    {
      "carName": "Crysta",
      "carImage": "assets/images/van.png",
      "carPrice": "₹ 8068",
      "carDetails": "Toyota innova Crysta Or Similar",
      "cardElevation": 0
    }
  ]);

  RxBool elevationValue = false.obs;
  onSelectedVehicleList(index) {
    for (var i in vehicleList) {
      i['cardElevation'] = 0;
    }
    vehicleList[index]['cardElevation'] = 10;
    vehicleList.refresh();
  }

  RxBool isFirstClipSelected = false.obs;
  RxBool isSecondClipSelected = false.obs;

  onFirstClipSelected(){
   isFirstClipSelected.value = true;
   isSecondClipSelected.value = false;
  }
  onSecondClipSelected(){
   isFirstClipSelected.value = false;
   isSecondClipSelected.value = true;
  }

  RxString dateTime = "${DateTime.now().add(Duration(minutes: 30)).toString().substring(2, 16)}".obs;
}
