import 'dart:ui';
import 'package:flutter/material.dart';

class AppButtonBlur extends StatelessWidget {
  const AppButtonBlur({super.key, required this.buttonText});

  final Widget buttonText;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: Center(
              child: buttonText,
            ),
          ),
        ),
      ),
    );
  }
}
