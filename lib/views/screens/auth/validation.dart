import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class ValidationScreen extends StatefulWidget {
  const ValidationScreen({super.key});

  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Media Query related work are here
    final size = MediaQuery.of(context).size;
    final double height = size.height;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Varify'),

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
              'Enter Varification Code',
              style: TextStyle(
                fontSize: height * 0.03,
                fontWeight: FontWeight.w700,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Enter the verification code we’ve just sent to \n your email to continue',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ),

            // Email Input field are here
            Padding(
              padding: EdgeInsets.all(height * 0.02),
              child: Column(
                children: [

                  /* Pin Related Work are start here */
                  PinCodeTextField(
                    cursorColor: Colors.white,
                    backgroundColor: Colors.white,

                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                     inactiveColor: Colors.grey.shade300,
                      inactiveFillColor: Colors.white,

                      selectedFillColor: Colors.white,
                      selectedColor: Colors.orange,

                      activeColor: Colors.orange,
                      activeFillColor: Colors.white,

                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                    ),

                    /*
                    * gray-200
                    * orange
                    *
                    * */
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    controller: _otpTEController,

                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    }, appContext: context,

                  ),
                  /* Pin Related Work are end here */

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomButton(onTap: (){},title: "Verify",),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapTermsHandler(){
    // TODO : using On tap Terms
  }

  void _onTapPrivacyPolicyHandler(){
    // TODO : using On tap Terms
  }
}
