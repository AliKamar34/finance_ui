import 'package:finance_app/core/routing/router_generation_config.dart';
import 'package:finance_app/core/themes/theme_data.dart';
import 'package:flutter/material.dart';

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: RouterGenerationConfig.goRoute,
    );
  }
}
