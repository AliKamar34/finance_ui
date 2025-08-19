import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_circle_container.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: AppColors.primaryColor,
        child: Icon(Icons.person, color: AppColors.whiteColor),
      ),
      title: Text('Welcome back', style: AppTextStyle.styleMedium12(context)),
      subtitle: Text('Ali Kamar', style: AppTextStyle.styleSemiBold18(context)),
      trailing: CustomCircleContainer(iconsPath: AppAssets.notification),
    );
  }
}
