import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:finance_app/core/widgets/custom_text_feild.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomArrowBack(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: AppTextStyle.styleBold30(context),
                      ),
                      Text(
                        'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                        style: AppTextStyle.styleMedium16(
                          context,
                        ).copyWith(color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
                CustomTextFeild(hint: 'Enter your email'),
                SizedBox(height: 38),
                CustomButton(
                  title: 'Send Code',
                  onPressed: () {
                    context.pushNamed(AppRoutes.createNewPassword);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
