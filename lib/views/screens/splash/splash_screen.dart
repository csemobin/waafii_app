import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery
            .of(context)
            .orientation == Orientation.portrait;
    return Scaffold(
      body: Stack(
        children: [
          // Background Color are here
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color.fromRGBO(3, 161, 136, 1)],
                begin: Alignment.center,
                end: Alignment.topCenter,
              ),
            ),
          ),

          // Logo and Circular Progress Indicator
          Flex(
            direction: isPortrait ? Axis.vertical : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(AppIcons.logoSvg)),
                    SizedBox(height: 20.h),
                    Text('Trusted Help, Anytime, Anywhere.', style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              CircularProgressIndicator(
                strokeWidth: 10,
                color: Color.fromRGBO(7, 161, 136, 0.3),
                backgroundColor: Color.fromRGBO(62, 244, 183, 0.1),
              ),
              SizedBox(height: 50.h,)
            ],
          ),
        ],
      ),
    );
  }
}

/*
* app_button_color
* app_colors
* app_icons
* app_images
* */