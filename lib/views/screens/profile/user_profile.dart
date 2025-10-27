import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/global/custom_assets/custom_input_field.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final TextEditingController _userNameTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Setup Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(child: SvgPicture.asset(AppIcons.userSvg)),
                Positioned(
                  right: 160,
                  top: 55,
                  child: SvgPicture.asset(AppIcons.camaraSvg),
                ),
              ],
              // children: List.generate(100, (index) => ListTile(title: Text('Maruf'),)).toList(),
            ),
            SizedBox(height: height * 0.01),
            Text(
              'Upload Profile Image',
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height * 0.08),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'User Name',
                    hintText: 'Enter your name',
                    controller: _userNameTEController,
                    fieldName: 'username',
                  ),
                  SizedBox(height: height * 0.03),

                  IntlPhoneField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.bordarColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.bordarColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.bordarColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                      ),

                      labelText: 'Phone Number',
                    ),
                    initialCountryCode: 'BD',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),

                  SizedBox(height: height * 0.03),
                  CustomInputField(
                    labelText: 'Location',
                    hintText: 'Enter Location',
                    controller: _userNameTEController,
                    fieldName: 'location',
                    suffixIconName: Icons.location_off,
                  ),
                  SizedBox(height: height * 0.2),
                  CustomButton(onTap: () {}, title: 'Save & Continue'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
