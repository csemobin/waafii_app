import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/global/custom_assets/custom_input_field.dart';
import 'package:waafii/routes/approutes.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Media Query related work are here
    final size = MediaQuery.of(context).size;
    final double height = size.height;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.2),
            SvgPicture.asset(AppIcons.logoSvg),
            SizedBox(height: height * 0.04),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: height * 0.04,
                fontWeight: FontWeight.w700,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              'Make Sure your account keep secure',
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: height * 0.02,
              ),
            ),

            // Email Input field are here
            Padding(
              padding: EdgeInsets.all(height * 0.02),
              child: Column(
                children: [
                  CustomInputField(
                    controller: _emailTEController,
                    fieldName: 'Email',
                    hintText: 'Enter your Email',
                    labelText: 'Email',
                    borderColor: AppColors.bordarColor,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      } else if (!RegExp(
                        r'^[^@]+@[^@]+\.[^@]+',
                      ).hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),

                  CustomInputField(
                    controller: _passwordTEController,
                    fieldName: 'Password',
                    hintText: 'Enter your Password',
                    labelText: 'Password',
                    borderColor: AppColors.bordarColor,
                    obscureText: true,
                    suffixIconName: Icons.remove_red_eye,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length <= 6) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: _forgotPasswordHandler, child: Text('Forgot Password', style: TextStyle(
                        color: AppColors.greyColor
                      ),)),
                    ],
                  ),

                  SizedBox(height: height * 0.04),

                  SizedBox(height: height * 0.06),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(onTap: () {}, title: "Sign In"),
                  ),
                  SizedBox(height: height * 0.01),
                  RichText(

                    text: TextSpan(

                      text: 'Don\'t have an account ? ',
                      style: TextStyle(
                        color: AppColors.greyColor,

                      ),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = _onTapSignUpHandler,
                            text: 'Sign Up',
                            style: TextStyle(
                                color: AppColors.primaryColor
                            )

                        )
                      ],

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  
  void _forgotPasswordHandler() => Navigator.pushNamed(context, AppRoutes.forgetPasswordScreen);
  void _onTapSignUpHandler(){
    Navigator.pushNamed(context, AppRoutes.signUp);
  }
}
