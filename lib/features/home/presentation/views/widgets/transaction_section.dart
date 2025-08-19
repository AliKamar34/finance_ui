import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          padding: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                backgroundColor: AppColors.borderColor,
                child: SvgPicture.asset(
                  AppAssets.download,
                  colorFilter: ColorFilter.mode(
                    AppColors.primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),

              Text('15000 EG', style: AppTextStyle.styleSemiBold16(context)),
              Text('Income', style: AppTextStyle.styleMedium12(context)),
            ],
          ),
        ),
        CustomContainer(
          padding: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                backgroundColor: AppColors.borderColor,
                child: SvgPicture.asset(
                  AppAssets.upload,
                  colorFilter: ColorFilter.mode(
                    AppColors.primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),

              Text('35000 EG', style: AppTextStyle.styleSemiBold16(context)),
              Text('Outcome', style: AppTextStyle.styleMedium12(context)),
            ],
          ),
        ),
      ],
    );
  }
}
