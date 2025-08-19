import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:finance_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFeild(hint: 'Username'),
          SizedBox(height: 12),
          CustomTextFeild(hint: 'Email'),
          SizedBox(height: 12),

          CustomTextFeild(
            hint: 'Password',
            isPassword: true,
            icon: Icon(Icons.remove_red_eye),
          ),
          SizedBox(height: 12),

          CustomTextFeild(
            hint: 'Confirm password',
            isPassword: true,
            icon: Icon(Icons.remove_red_eye),
          ),
          SizedBox(height: 30),
          CustomButton(
            title: 'Register',
            onPressed: () {
              context.pushNamed(AppRoutes.otpVerification);
            },
          ),
        ],
      ),
    );
  }
}
