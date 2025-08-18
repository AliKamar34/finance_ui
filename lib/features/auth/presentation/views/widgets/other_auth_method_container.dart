import 'package:finance_app/core/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class OtherAuthMetodContainer extends StatelessWidget {
  const OtherAuthMetodContainer({super.key, required this.logo, this.onTap});
  final Widget logo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomContainer(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 15),
          child: logo,
        ),
      ),
    );
  }
}
