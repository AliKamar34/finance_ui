import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hint,
    this.icon,
    this.isPassword,
  });
  final String hint;
  final Widget? icon;
  final bool? isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.secondaryColor,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.greyColor,
        border: borderBuilder(),
        enabledBorder: borderBuilder(),
        focusedBorder: borderBuilder(),

        hintText: hint,
        hintStyle: AppTextStyle.styleMedium15(context),
        suffixIcon: icon,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.secondaryColor),
    );
  }
}
