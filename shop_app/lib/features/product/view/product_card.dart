import 'package:flutter/material.dart';
import 'package:shop_app/constants/extensions/image_extension.dart';
import 'package:shop_app/features/product/model/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 500,
        decoration: BoxDecoration(
          color: Products().products[index]!.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  Products().products[index]!.imageEnum.path,
                  fit: BoxFit.contain,
                  height: 170,
                  width: 170,
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      Products().products[index]!.title,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Products().products[index]!.price,
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
            ],
          ),
        ),
      );
}
