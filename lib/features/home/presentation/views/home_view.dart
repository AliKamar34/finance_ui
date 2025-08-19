import 'package:finance_app/features/home/presentation/views/widgets/casoule_card.dart';
import 'package:finance_app/features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:finance_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: 24),
            CasouleCard(),
            SizedBox(height: 24),

            Expanded(child: CustomGridView()),
          ],
        ),
      ),
    );
  }
}
