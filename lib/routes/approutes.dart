import 'package:get/get.dart';
import 'package:waafii/views/screens/auth/auth_selection.dart';
import 'package:waafii/views/screens/auth/forget_password.dart';
import 'package:waafii/views/screens/auth/reset_password.dart';
import 'package:waafii/views/screens/auth/sign_in.dart';
import 'package:waafii/views/screens/auth/sign_up.dart';
import 'package:waafii/views/screens/auth/terms_condition.dart';
import 'package:waafii/views/screens/auth/validation.dart';
import 'package:waafii/views/screens/onboard/on_board_screen.dart';
import 'package:waafii/views/screens/splash/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = '/splash_screen.dart';
  static const String onboardScreen = '/on_board_screen.dart';
  static const String authSelectionScreen = '/auth_selection.dart';
  static const String signUp = '/sign_up.dart';
  static const String validationScreen = '/validation.dart';
  static const String signInScreen = '/sign_in.dart';
  static const String forgetPasswordScreen = '/forget_password.dart';
  static const String resetPasswordScreen = '/reset_password.dart';
  static const String termsAndConditionScreen = '/terms_condition.dart';


  static List<GetPage> get routes => [
    GetPage( name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onboardScreen, page: () => const OnBoardScreen()),
    GetPage(name: authSelectionScreen, page: () => const AuthSelectionScreen()),
    GetPage(name: signUp, page: ()=> const SignUpScreen()),
    GetPage(name: validationScreen, page: () => ValidationScreen()),
    GetPage(name: signInScreen, page: () => SignInScreen()),
    GetPage(name: forgetPasswordScreen, page: () => ForgetPassword()),
    GetPage(name: resetPasswordScreen, page: ()=> ResetPasswordScreen()),
    GetPage(name: termsAndConditionScreen, page: () => const TermsAndConditionScreen()),
  ];
}