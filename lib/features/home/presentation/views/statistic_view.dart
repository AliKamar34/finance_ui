import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_container.dart';
import 'package:finance_app/features/home/presentation/views/widgets/bar_chart.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:finance_app/features/home/presentation/views/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class StatisticView extends StatelessWidget {
  const StatisticView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomAppBar(title: 'Statistic', icon: AppAssets.more),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jan 28 - May 28, 2025 ',
                  style: AppTextStyle.styleMedium14(context),
                ),
                CustomContainer(
                  backgroundColor: Color(0xffB9C4FF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Monthly',
                        style: AppTextStyle.styleMedium14(
                          context,
                        ).copyWith(color: AppColors.blackTextColor),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomBarChart(),
            SizedBox(height: 20),
            TransactionSection(),
          ],
        ),
      ),
    );
  }
}
