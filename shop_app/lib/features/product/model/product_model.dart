import 'package:shop_app/constants/enums/image_enum.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/theme/app_colors.dart';

class Products {
  final Map<int, ProductModel> products = {
    0: ProductModel(
      imageEnum: ImageEnum.cat_mug,
      color: AppColors.productColor01,
      title: 'A cute cat mug',
      price: '\$20',
    ),
    1: ProductModel(
      imageEnum: ImageEnum.peach_mug,
      color: AppColors.productColor02,
      title: 'A pretty peach mug',
      price: '\$20',
    ),
    2: ProductModel(
      imageEnum: ImageEnum.thermal_cup,
      color: AppColors.productColor03,
      title: 'Thermal cup',
      price: '\$45',
    ),
    3: ProductModel(
      imageEnum: ImageEnum.thermal_flask,
      color: AppColors.productColor04,
      title: 'A Thermal Flask',
      price: '\$55',
    ),
  };
}

class ProductModel {
  final ImageEnum imageEnum;
  final Color color;
  final String title;
  final String price;

  ProductModel(
      {required this.imageEnum,
      required this.color,
      required this.title,
      required this.price});
}
