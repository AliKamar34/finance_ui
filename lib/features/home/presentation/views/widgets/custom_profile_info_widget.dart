import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomProfileInfoWidget extends StatelessWidget {
  const CustomProfileInfoWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.styleMedium14(context)),
        Text(subTitle, style: AppTextStyle.styleMedium16(context)),
        Divider(),
      ],
    );
  }
}
