import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedView extends StatelessWidget {
  const PasswordChangedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.success),
              SizedBox(height: 35),
              Text(
                'Password Changed!',
                style: AppTextStyle.styleBold30(context),
              ),
              Text(
                'Your password has been changed successfully.',
                style: AppTextStyle.styleMedium16(
                  context,
                ).copyWith(color: AppColors.secondaryColor),
              ),
              SizedBox(height: 40),
              CustomButton(
                title: 'Back to Login',
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
