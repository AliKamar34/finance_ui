import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/custom_arrow_back.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/other_auth_methods_sections.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomArrowBack(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28),
                  child: Text(
                    'Hello! Register to get started',
                    style: AppTextStyle.styleBold30(context),
                  ),
                ),
                SignUpForm(),
                SizedBox(height: 35),
                Row(
                  spacing: 12,
                  children: [
                    Expanded(child: Divider()),
                    Text(
                      'Or Register with',
                      style: AppTextStyle.styleSemiBold14(context),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 22),
                OtherAuthMethodsSection(),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: AppTextStyle.styleSemiBold14(
                        context,
                      ).copyWith(color: AppColors.primaryColor),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                context.pushReplacementNamed(AppRoutes.login),
                          text: 'Login Now ',
                          style: AppTextStyle.styleSemiBold14(
                            context,
                          ).copyWith(color: AppColors.blackTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
