import 'package:finance_app/core/themes/theme_data.dart';
import 'package:finance_app/features/onBoarding/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}
