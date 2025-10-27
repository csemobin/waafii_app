import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/global/custom_assets/custom_input_field.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class ValidationScreen extends StatefulWidget {
  const ValidationScreen({super.key});

  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
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
  // On Tap Terms Handler
  void _onTapTermsHandler(){
    // TODO : using On tap Terms
  }

  // On TapPrivacyPolicyHandler
  void _onTapPrivacyPolicyHandler(){
    // TODO : using On tap Terms
  }
}
