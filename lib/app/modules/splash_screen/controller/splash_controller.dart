import 'package:cabto/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    onBoarding();
    super.onInit();
  }

  void onBoarding() async {
    await Future.delayed(const Duration(seconds: 3));
      Get.offAndToNamed(Routes.HOME);
  }
}
