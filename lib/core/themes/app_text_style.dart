import 'package:finance_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle styleBold30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle styleBold22(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle styleBold12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w700,
      color: AppColors.whiteTextColor,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: AppColors.whiteTextColor,
    );
  }

  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: AppColors.blackTextColor,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: AppColors.blackTextColor,
    );
  }

  static TextStyle styleMedium15(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: AppColors.blackTextColor,
    );
  }

  static TextStyle styleMedium14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle styleMedium12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryColor,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.85;
  double upperLimit = fontSize * 1.3;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width <= 400) {
    return 0.85;
  } else if (width <= 800) {
    return 1.0;
  } else if (width <= 1200) {
    return 1.15;
  } else {
    return 1.25;
  }
}
