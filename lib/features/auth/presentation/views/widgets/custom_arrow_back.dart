import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomArrowBack extends StatelessWidget {
  const CustomArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pop();
      },
      child: CustomContainer(
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
