import 'package:flutter/material.dart';
import 'package:shop_app/core/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonText});

  final Widget buttonText;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.buttonBackground,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: buttonText,
        ),
      ),
    );
  }
}
