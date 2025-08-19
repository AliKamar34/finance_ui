import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_profile_info_widget.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomAppBar(title: 'My Profile', icon: AppAssets.editSquare),
            SizedBox(height: 50),
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primaryColor,
              child: Icon(Icons.person, color: AppColors.whiteColor),
            ),
            CustomProfileInfoWidget(title: 'Full Name', subTitle: 'Ali Kamar'),
            CustomProfileInfoWidget(
              title: 'Email',
              subTitle: 'aliekamar123@gmail.com',
            ),
            CustomProfileInfoWidget(
              title: 'Phone Number',
              subTitle: '+1 3712 3789',
            ),
            CustomProfileInfoWidget(title: 'Address', subTitle: 'Cairo,Egypt'),
          ],
        ),
      ),
    );
  }
}
