import 'package:flutter/material.dart';
import 'package:kitsmart/features/shop/screens/cart/cart.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class MMCartContainerIcon extends StatelessWidget {
  const MMCartContainerIcon(
      {super.key, required this.onPressed, this.iconColor});

  final VoidCallback onPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: MMHelperFunctions.isDarkMode(context)
                ? MMColors.textWhite
                : MMColors.black,
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: MMHelperFunctions.isDarkMode(context)
                    ? MMColors.primaryColor2
                    : MMColors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: MMHelperFunctions.isDarkMode(context)
                          ? MMColors.textWhite
                          : MMColors.textWhite,
                      fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
