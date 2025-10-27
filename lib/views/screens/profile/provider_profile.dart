import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/global/custom_assets/custom_input_field.dart';
import 'package:waafii/utils/app_colors.dart';

class ProviderProfileScreen extends StatefulWidget {
  const ProviderProfileScreen({super.key});

  @override
  State<ProviderProfileScreen> createState() => _ProviderProfileScreenState();
}

class _ProviderProfileScreenState extends State<ProviderProfileScreen> {
  final TextEditingController _userNameTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        scrolledUnderElevation: 0,
        forceMaterialTransparency: true,
        title: Text('Setup Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withAlpha(852),
                  ),
                  child: Icon(Icons.person, size: 80, color: Colors.white),
                ),
                Positioned(
                  bottom: 6,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,

                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Text(
              'Upload Profile Image',
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height * 0.03),
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
                  SizedBox(height: height * 0.02),
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
                    initialCountryCode: 'US',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),

                  SizedBox(height: height * 0.02),
                  CustomInputField(
                    labelText: 'Location',
                    hintText: 'Enter Location',
                    controller: _userNameTEController,
                    fieldName: 'location',
                    suffixIconName: Icons.location_off,
                  ),
                  SizedBox(height: height * 0.02),
                  CustomInputField(
                    labelText: 'Service You Provide',
                    hintText: 'Enter your service you want to provide',
                    controller: _userNameTEController,
                    fieldName: 'username',
                  ),
                  SizedBox(height: height * 0.02),

                  CustomInputField(
                    labelText: 'Service License',
                    hintText: 'Upload here',
                    controller: _userNameTEController,
                    fieldName: 'license',
                    suffixIconName: Icons.upload,
                  ),
                  SizedBox(height: height * 0.02),
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
