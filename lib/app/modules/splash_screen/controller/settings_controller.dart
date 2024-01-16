import 'package:cabto/base/base_controller.dart';
import 'package:get/get.dart';

class SettingsController extends BaseController {
 

  RxBool isSwitchSelected = true.obs;
  

   onSwitchSelect() {
   Get.isDarkMode?isSwitchSelected.value=false:isSwitchSelected.value=true;

   
  }
}
