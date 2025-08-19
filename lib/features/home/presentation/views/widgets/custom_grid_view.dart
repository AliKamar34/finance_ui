import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:finance_app/core/widgets/custom_container.dart';
import 'package:finance_app/features/home/data/models/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<GridItemModel> items = [
      GridItemModel(
        icon: AppAssets.send,
        title: 'Send money',
        subTitle: 'Take acc to acc',
      ),
      GridItemModel(
        icon: AppAssets.wallet,
        title: 'Pay the bill',
        subTitle: 'Show bills',
      ),
      GridItemModel(
        icon: AppAssets.send,
        title: 'Request',
        subTitle: 'Request Money',
      ),
      GridItemModel(
        icon: AppAssets.groupUser,
        title: 'Contact',
        subTitle: 'My Contact',
      ),
    ];
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (context, index) {
        return CustomContainer(
          padding: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomContainer(
                backgroundColor: AppColors.borderColor,
                child: SvgPicture.asset(
                  items[index].icon,
                  colorFilter: ColorFilter.mode(
                    AppColors.primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Spacer(),
              Text(
                items[index].title,
                style: AppTextStyle.styleSemiBold16(context),
              ),
              Text(
                items[index].subTitle,
                style: AppTextStyle.styleMedium12(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
