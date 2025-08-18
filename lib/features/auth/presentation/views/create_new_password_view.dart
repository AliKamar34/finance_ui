import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/create_new_password_form.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                      'Create new password',
                      style: AppTextStyle.styleBold30(context),
                    ),
                    Text(
                      'Your new password must be unique from those previously used.',
                      style: AppTextStyle.styleMedium16(
                        context,
                      ).copyWith(color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              CreateNewPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
