import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.blackTextColor, AppColors.primaryColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('X-Card', style: AppTextStyle.styleBold12(context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Balance', style: AppTextStyle.styleMedium14(context)),
              Text('23400 EG', style: AppTextStyle.styleSemiBold24(context)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '****  3434',
                style: AppTextStyle.styleMedium16(
                  context,
                ).copyWith(color: AppColors.borderColor),
              ),
              Text(
                '12/24',
                style: AppTextStyle.styleMedium12(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
