import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/icon/mm_circular_icon.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class MMBottomAddToCart extends StatelessWidget {
  const MMBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MMSizes.defaultSpace, vertical: MMSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? MMColors.containerGrey : MMColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(MMSizes.cardRadiusLg),
          topRight: Radius.circular(MMSizes.cardRadiusLg),
        ),
      ), // BorderRadius.only, BoxDecoration
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const MMCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: MMColors.darkGrey,
                width: 40,
                height: 40,
                color: MMColors.textWhite,
              ), // TCircularIcon
              const SizedBox(width: MMSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: MMSizes.spaceBtwItems),
              const MMCircularIcon(
                icon: Iconsax.add, // Changed from minus to plus
                backgroundColor: MMColors.black,
                width: 40,
                height: 40,
                color: MMColors.textWhite,
              ), // TCircularIcon
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(MMSizes.md),
                  backgroundColor: MMColors.black,
                  side: const BorderSide(color: MMColors.black)),
              child: const Text('Add to Cart'))
        ],
      ), // Row
    );
  }
}
