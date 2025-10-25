import 'package:get/get.dart';
import 'package:waafii/app/views/screens/Onboard/onboarding_screen.dart';
import 'package:waafii/app/views/screens/Splash/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = '/splash_screen.dart';
  static const String onboardScreen = '/onboarding_screen.dart';

  static List<GetPage> get routes => [
      GetPage( name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onboardScreen, page: () => const OnboardingScreen()),
  ];
}