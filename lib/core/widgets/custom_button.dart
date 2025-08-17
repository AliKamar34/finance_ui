import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 56),
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.styleSemiBold14(
          context,
        ).copyWith(color: AppColors.whiteTextColor),
      ),
    );
  }
}
