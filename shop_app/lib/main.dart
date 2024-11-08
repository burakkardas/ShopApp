import 'package:flutter/material.dart';
import 'package:shop_app/core/theme/app_theme.dart';
import 'package:shop_app/features/home/view/home_view.dart';
import 'package:shop_app/features/product/view/product_detail_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Shop App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        home: const HomeView(),
      );
}
