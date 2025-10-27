import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/global/custom_assets/custom_input_field.dart';
import 'package:waafii/routes/approutes.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class ForgetPassword extends StatefulWidget{
 const ForgetPassword({super.key});
 @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword>{
  @override
  Widget build(BuildContext context){

    // Media Query related work are here
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final TextEditingController _emailTEController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Forgot Password'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.1),
              SvgPicture.asset(AppIcons.logoSvg),
              SizedBox(height: height * 0.04),
              Text(
                'Forget Your Password?',
                style: TextStyle(
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(height: height * 0.1),
          
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
          
                    SizedBox(height: height * 0.2),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomButton(onTap: _getCodeVarifyHandler, title: "Get Code"),
                    ),
                    SizedBox(height: height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _getCodeVarifyHandler() => Navigator.pushNamed(context, AppRoutes.validationScreen);
}