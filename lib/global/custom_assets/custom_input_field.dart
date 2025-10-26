import 'package:flutter/material.dart';
import 'package:waafii/utils/app_colors.dart';

class CustomInputField extends StatelessWidget {
  // Optional Parameters
  final Color? colorName;
  final Color? errorColor;
  final Color? borderColor;
  final Color? enableBorderColor;
  final Color? focusColor;
  final Icon? leading;
  final Icon? trailing;
  final IconData? suffixIconName;
  final IconData? preffixIconName;
  final bool? obscureText;
  // Required Parameters
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String fieldName;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomInputField({
    super.key,
    // Optional Parameters
    this.colorName,
    this.errorColor,
    this.borderColor,
    this.enableBorderColor,
    this.focusColor,
    this.leading,
    this.trailing,
    this.suffixIconName,
    this.preffixIconName,
    this.obscureText,

    // Required Parameters
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.fieldName,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText == true ? true : false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: AppColors.greyColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        hintText: hintText,
        suffixIcon: suffixIconName != null ? Icon(suffixIconName) : null,
        prefixIcon: preffixIconName != null ? Icon(preffixIconName) : null,

        // Border styles
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: 2,
          ),
        ),

        // Error Border
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: errorColor ?? Colors.red,
            width: 2,
          ),
        ),

        // Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: focusColor ?? AppColors.bordarColor,
            width: 2,
          ),
        ),

        // Enabled Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: enableBorderColor ?? AppColors.bordarColor,
            width: 2,
          ),
        ),
      ),
      validator: validator ?? _defaultValidator,
    );
  }

  // Default validation (can be customized when passed)
  String? _defaultValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }
}
