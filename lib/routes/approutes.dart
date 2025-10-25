import 'package:get/get.dart';
import 'package:waafii/views/screens/onboard/on_board_screen.dart';
import 'package:waafii/views/screens/splash/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = '/splash_screen.dart';
  static const String onboardScreen = '/on_board_screen.dart';

  static List<GetPage> get routes => [
    GetPage( name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onboardScreen, page: () => const OnBoardScreen()),
  ];
}