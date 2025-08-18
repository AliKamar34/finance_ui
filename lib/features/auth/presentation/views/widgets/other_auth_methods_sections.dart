import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/features/auth/presentation/views/widgets/other_auth_method_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OtherAuthMethodsSection extends StatelessWidget {
  const OtherAuthMethodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OtherAuthMetodContainer(
          onTap: () {},
          logo: SvgPicture.asset(AppAssets.faceBookLogo),
        ),
        OtherAuthMetodContainer(
          onTap: () {},
          logo: SvgPicture.asset(AppAssets.googleLogo),
        ),
        OtherAuthMetodContainer(
          onTap: () {},
          logo: SvgPicture.asset(AppAssets.appleLogo),
        ),
      ],
    );
  }
}
