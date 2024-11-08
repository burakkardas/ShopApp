import 'package:flutter/material.dart';
import 'package:shop_app/constants/enums/image_enum.dart';
import 'package:shop_app/constants/extensions/image_extension.dart';

class AppbarAction extends StatelessWidget {
  const AppbarAction({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          width: 80,
          height: 40,
          decoration: _decoration(),
          child: Padding(
            padding: const EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(ImageEnum.shop_icon.path),
                Image.asset(ImageEnum.message_icon.path),
              ],
            ),
          ),
        ),
      );

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: Colors.black.withOpacity(0.1),
      ),
    );
  }
}
