import 'package:cabto/app/modules/booking/controller/booking_controller.dart';
import 'package:get/get.dart';

class BookingBinding extends Bindings{
    @override
  void dependencies(){
    Get.lazyPut(() => BookingController());
  }
}