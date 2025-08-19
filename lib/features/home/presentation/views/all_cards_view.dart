import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/features/home/presentation/views/widgets/card_item.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AllCardsView extends StatelessWidget {
  const AllCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomAppBar(title: 'All Cards', icon: AppAssets.more),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardItem(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
