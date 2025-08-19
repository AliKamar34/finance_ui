import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:finance_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFeild(hint: 'Enter your email'),
          SizedBox(height: 18),
          CustomTextFeild(
            hint: 'Enter your password',
            isPassword: true,
            icon: Icon(Icons.remove_red_eye),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => context.pushNamed(AppRoutes.forgetPassword),
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyle.styleSemiBold14(context),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          CustomButton(
            title: 'Log in',
            onPressed: () {
              context.pushNamed(AppRoutes.otpVerification);
            },
          ),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}
