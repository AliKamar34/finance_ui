import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:finance_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordForm extends StatelessWidget {
  const CreateNewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFeild(
            hint: 'New Password',
            isPassword: true,
            icon: Icon(Icons.remove_red_eye),
          ),
          SizedBox(height: 15),
          CustomTextFeild(
            hint: 'Confirm Password',
            isPassword: true,
            icon: Icon(Icons.remove_red_eye),
          ),

          SizedBox(height: 38),
          CustomButton(title: 'Reset Password', onPressed: () {}),
        ],
      ),
    );
  }
}
