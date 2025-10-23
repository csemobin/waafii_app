import 'package:get/get.dart';
import 'package:waafii/app/views/screens/Splash/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = '/';

  static List<GetPage> get routes => [
      GetPage( name: splashScreen, page: () => const SplashScreen()),
  ];
}