import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/global/custom_assets/custom_input_field.dart';
import 'package:waafii/routes/approutes.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';
import 'package:waafii/utils/app_images.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Reset Password'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.05),
              SvgPicture.asset(AppIcons.logoSvg),
              SizedBox(height: height * 0.04),
              Text(
                'Reset your Password',
                style: TextStyle(
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Password Must have 6-8 Characters',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: height * 0.02,
                ),
              ),
              SizedBox(height: height * 0.04),
              // Email Input field are here
              Padding(
                padding: EdgeInsets.all(height * 0.02),
                child: Column(
                  children: [
                    CustomInputField(
                      controller: _passwordTEController,
                      fieldName: 'Password',
                      hintText: 'Enter your Password',
                      labelText: 'Password',
                      borderColor: AppColors.bordarColor,
                      obscureText: true,
                      suffixIconName: Icons.remove_red_eye,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length <= 6) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    CustomInputField(
                      controller: _confirmPasswordTEController,
                      fieldName: 'Conform Password',
                      hintText: 'Enter your Password',
                      labelText: 'Confirm Password',
                      borderColor: AppColors.bordarColor,
                      obscureText: true,
                      suffixIconName: Icons.remove_red_eye,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length <= 6) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: height * 0.2),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomButton(
                        onTap: _onTapResetPopUpScreen,
                        title: "Reset",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapResetPopUpScreen() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImagePath.oppupPng),

              SizedBox(height: 24),
              Text(
                'Password changed',
                style: TextStyle(color: AppColors.primaryColor),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  'Your password has been changed \n successfully',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          CustomButton(onTap: _signInHandler, title: "Back to Sign in"),
        ],
      ),
    );
  }

  void _signInHandler() => Navigator.pushNamed(context, AppRoutes.signInScreen);
}
