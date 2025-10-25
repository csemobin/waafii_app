import 'package:get/get.dart';
import 'package:waafii/views/screens/splash/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = '/splash_screen.dart';

  static List<GetPage> get routes => [
    GetPage( name: splashScreen, page: () => const SplashScreen()),
  ];
}