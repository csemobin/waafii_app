import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/routes/approutes.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class AuthSelectionScreen extends StatefulWidget {
  const AuthSelectionScreen({super.key});

  @override
  State<AuthSelectionScreen> createState() => _AuthSelectionScreenState();
}

class _AuthSelectionScreenState extends State<AuthSelectionScreen> {
  // Selected Status are control here
  int selectedIndex = 0;

  // handle the client or provider
  void _selectedController( int index ){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                SvgPicture.asset(AppIcons.logoSvg, fit: BoxFit.fitHeight),
                SizedBox(height: height * 0.06),
                Text(
                  'I am',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: height * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.06),

                // client Code are here
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _selectedController(1);
                      });
                    },
                    child:
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: selectedIndex == 1
                              ? AppColors.primaryColor
                              : AppColors.greyColor.withOpacity(0.2),
                          width: 3,
                        ),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(AppIcons.groupSvg),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Client',
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: width * 0.06,
                                ),
                              ),
                              Text(
                                'I am looking for commercial services.',
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Provider Code are here
                Padding(
                  padding: EdgeInsets.all(height*0.015),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _selectedController(2);
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          strokeAlign: 2,
                          color: selectedIndex == 2
                              ? AppColors.primaryColor
                              : AppColors.greyColor.withOpacity(0.2),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        // border: Border.all(color: AppColors.primaryColor,width: 3,),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(AppIcons.clientSvg),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Provider',
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: width * 0.06,
                                ),
                              ),
                              Text(
                                'I offer professional Services',
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: width * 0.04,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.06),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CustomButton(onTap: () {}, title: "Next"),
                ),
                SizedBox(height: height * 0.01),
                RichText(

                  text: TextSpan(

                    text: 'Already have an account ? ',
                    style: TextStyle(
                      color: AppColors.greyColor,

                    ),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = _onTapSignInHandler,
                          text: 'Sign In',
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
        ),
      ),
    );
  }

// Sign In handler are here
  void _onTapSignInHandler() {
        Navigator.pushReplacementNamed(context, AppRoutes.signUp);
  }

}
