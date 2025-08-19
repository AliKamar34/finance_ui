import 'package:finance_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircleContainer extends StatelessWidget {
  const CustomCircleContainer({super.key, required this.iconsPath});
  final String iconsPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(iconsPath),
      ),
    );
  }
}
