import 'package:cabto/app/modules/splash_screen/controller/splash_controller.dart';
import 'package:get/get.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
