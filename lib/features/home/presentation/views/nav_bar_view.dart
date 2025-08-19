import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currIndex = 0;
  final List<Widget> pages = [
    Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.orange,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.yellow,
      width: double.infinity,
      height: double.infinity,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        selectedItemColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextStyle.styleMedium15(context),
        onTap: (value) {
          setState(() {
            currIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.home,
              colorFilter: ColorFilter.mode(
                currIndex == 0 ? AppColors.primaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.chart,
              colorFilter: ColorFilter.mode(
                currIndex == 1 ? AppColors.primaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(AppAssets.plus),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.wallet,
              colorFilter: ColorFilter.mode(
                currIndex == 3 ? AppColors.primaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'My card',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.profile,
              colorFilter: ColorFilter.mode(
                currIndex == 4 ? AppColors.primaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
