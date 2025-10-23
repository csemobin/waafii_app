import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/core/utils/app_colors.dart';
import 'package:waafii/core/utils/app_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color(0xFF03A188), // #03A188
              Color.fromRGBO(255, 255, 255, 0), // transparent white
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 250),
            SvgPicture.asset(AppIcons.logoSvg),
            SizedBox(height: 20),
            Text(
              'Trusted Help, Anytime, Anywhere.',
              style: TextStyle(
                color: AppColors.textColor,
                fontWeight: FontWeight.w600,
                fontFamily: 'InterMedium',
                fontSize: 20,
              ),
            ),
            SizedBox(height: 350),
            CircularProgressIndicator(
              strokeWidth: 10,
              color: Color.fromRGBO(62, 244, 183, 0.8),
            ),
          ],
        ),
      ),
    );
  }
}
