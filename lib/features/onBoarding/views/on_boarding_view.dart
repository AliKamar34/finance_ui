import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/widgets/custom_button.dart';
import 'package:finance_app/core/widgets/custom_out_lined_button.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          spacing: 10,
          children: [
            Expanded(child: Image.asset(AppAssets.onBoarding1)),
            CustomButton(title: 'Log in', onPressed: () {}),
            CustomOutLinedButton(title: 'Register', onPressed: () {}),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
