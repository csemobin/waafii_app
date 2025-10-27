import 'package:flutter/material.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_images.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            Image.asset(AppImagePath.errorImagePng),
            SizedBox(height: height * 0.05),
            Text(
              'Oops!',
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: height * 0.04,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Something Went Wrong',
              style: TextStyle(
                fontSize: height * 0.02,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height*0.1,),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CustomButton(onTap: (){}, title: 'Go back',),
            )
          ],
        ),
      ),
    );

  }
}
