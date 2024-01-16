import 'package:cabto/app/modules/booking/binding/booking_binding.dart';
import 'package:cabto/app/modules/booking/view/booking_view.dart';
import 'package:cabto/app/modules/home/binding/home_binding.dart';
import 'package:cabto/app/modules/home/view/home_view.dart';
import 'package:cabto/app/modules/splash_screen/bindings/settings_bindings.dart';
import 'package:cabto/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:cabto/app/modules/splash_screen/view/settings.dart';
import 'package:cabto/app/modules/splash_screen/view/splash_view.dart';
import 'package:get/get.dart';

class Routes {
  static const SPLASH = '/splash_view';
  static const HOME = '/home';
  static const BOOKING = '/booking';
  static const SETTINGS = '/settings';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding()
    ),
    GetPage(
      name: Routes.HOME,
      page: () =>const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.BOOKING,
      page: () => const BookingView(),
      binding: BookingBinding(),
    ),
      GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingsOptions(),
      binding: SettingBinding()
    ),
  ];
}
