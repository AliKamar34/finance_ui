import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomOutLinedButton extends StatelessWidget {
  const CustomOutLinedButton({super.key, this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 56),
        side: BorderSide(color: AppColors.primaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.styleSemiBold14(
          context,
        ).copyWith(color: AppColors.primaryColor),
      ),
    );
  }
}
