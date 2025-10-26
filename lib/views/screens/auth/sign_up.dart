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
  Widget build(BuildContext) {
    // Media Query related work are here
    final size = MediaQuery.of(context).size;
    final double height = size.height;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Sign Up'),

        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            SvgPicture.asset(AppIcons.logoSvg),
            SizedBox(height: height * 0.04),
            Text(
              'Join With Us!',
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

                  CustomInputField(
                    controller: _passwordTEController,
                    fieldName: 'Confirm Password',
                    hintText: 'Rewrite your password',
                    labelText: 'Confirm Password',
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
                  SizedBox(height: height * 0.1),

                  RichText(
                    text: TextSpan(
                      text: 'I agree with',
                      style: TextStyle(color: Colors.red),
                      children: [
                        TextSpan(
                          text: 'Terms & Condition',
                          recognizer: TapGestureRecognizer()
                            ..onTap = _onTapTermsHandler,
                        ),
                        TextSpan(text: 'and'),
                        TextSpan(
                          text: 'Terms & Condition',
                          recognizer: TapGestureRecognizer()
                            ..onTap = _onTapPrivacyPolicyHandler,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomButton(
                      onTap: _onTapValidationHandler,
                      title: "Sign Up",
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

  // On Tap Terms Handler
  void _onTapTermsHandler() {
    // TODO : using On tap Terms
  }

  // On TapPrivacyPolicyHandler
  void _onTapPrivacyPolicyHandler() {
    // TODO : using On tap Terms
  }

  void _onTapValidationHandler() {
    Navigator.pushNamed(context, AppRoutes.validationScreen);
  }
}
