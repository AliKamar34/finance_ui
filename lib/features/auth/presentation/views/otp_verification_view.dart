import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/custom_arrow_back.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'OTP Verification',
                        style: AppTextStyle.styleBold30(context),
                      ),
                      Text(
                        'Enter the verification code we just sent on your email address.',
                        style: AppTextStyle.styleMedium16(
                          context,
                        ).copyWith(color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  textStyle: AppTextStyle.styleBold22(context),
                  pinTheme: PinTheme(
                    fieldWidth: MediaQuery.of(context).size.width * 0.15,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    selectedColor: AppColors.primaryColor,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.borderColor,
                    inactiveFillColor: AppColors.borderColor,
                    activeFillColor: AppColors.whiteColor,
                    selectedFillColor: AppColors.whiteColor,
                  ),
                ),
                SizedBox(height: 32),
                CustomButton(
                  title: 'Verify',
                  onPressed: () {
                    context.pushNamed(AppRoutes.navBarView);
                  },
                ),
                SizedBox(height: 20),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: 'Didn’t received code? ',
                      style: AppTextStyle.styleSemiBold14(
                        context,
                      ).copyWith(color: AppColors.primaryColor),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: 'Resend',
                          style: AppTextStyle.styleSemiBold14(
                            context,
                          ).copyWith(color: AppColors.blackTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
