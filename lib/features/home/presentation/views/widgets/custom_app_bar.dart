import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_circle_container.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title, icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCircleContainer(padding: 20, iconsPath: AppAssets.arrow),
        Text(title, style: AppTextStyle.styleSemiBold18(context)),
        CustomCircleContainer(iconsPath: icon),
      ],
    );
  }
}
