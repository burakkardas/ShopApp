import 'package:flutter/material.dart';
import 'package:shop_app/constants/enums/image_enum.dart';
import 'package:shop_app/constants/extensions/image_extension.dart';
import 'package:shop_app/core/widgets/app_button.dart';
import 'package:shop_app/core/widgets/app_button_blur.dart';
import 'package:shop_app/features/home/widgets/appbar_action.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            // Arka plan resmi
            Container(
              decoration: _decoration(),
            ),
            // AppBar üstüne gelecek şekilde
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _appBar(),
            ),
            Positioned(
              top: 160,
              left: 20,
              right: 20,
              bottom: 40,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButtonBlur(
                      buttonText: Image.asset(
                        ImageEnum.hearth.path,
                        width: 30,
                      ),
                    ),
                    const AppButtonBlur(
                      buttonText: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    const AppButtonBlur(
                      buttonText: Text('-',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          )),
                    ),
                    const AppButton(
                      buttonText: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smoko Cup',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '17 oz handmade I love you\nMOM cup, Mint Pink White\nSpeckled mug with message,\nMother\'s Day cup, A mug for mum',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$20',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  BoxDecoration _decoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(ImageEnum.detail_bg.path),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent, // AppBar'ı şeffaf yapıyoruz
      elevation: 0, // Gölgeyi kaldırıyoruz
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
