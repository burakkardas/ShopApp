import 'package:flutter/material.dart';
import 'package:shop_app/constants/enums/image_enum.dart';
import 'package:shop_app/constants/extensions/image_extension.dart';
import 'package:shop_app/core/widgets/app_textfield.dart';
import 'package:shop_app/features/home/widgets/appbar_action.dart';
import 'package:shop_app/features/product/view/product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _content(),
      );

  SafeArea _content() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Column(
        children: [
          const AppTextField(),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.only(top: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 250,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: List.generate(
                10,
                (i) => ProductCard(index: i % 4),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  AppBar _appBar() {
    return AppBar(
      title: Image.asset(
        ImageEnum.app_logo.path,
        fit: BoxFit.cover,
        height: 35,
        width: 35,
      ),
      leadingWidth: 52,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset(
          ImageEnum.app_menu.path,
        ),
      ),
      actions: const [
        AppbarAction(),
      ],
    );
  }
}
