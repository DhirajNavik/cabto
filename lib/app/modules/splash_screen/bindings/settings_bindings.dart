import 'package:cabto/app/modules/splash_screen/controller/settings_controller.dart';
import 'package:get/get.dart';


class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>SettingsController());
  }
}
 