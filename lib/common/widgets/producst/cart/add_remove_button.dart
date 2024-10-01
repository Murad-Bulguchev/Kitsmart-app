import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/icon/mm_circular_icon.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class MMProductQuantityWithAddRemoveButton extends StatelessWidget {
  const MMProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 95),
        MMCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MMSizes.md,
          color: MMHelperFunctions.isDarkMode(context)
              ? MMColors.textWhite
              : MMColors.dark,
          backgroundColor: MMHelperFunctions.isDarkMode(context)
              ? MMColors.darkerGrey
              : MMColors.light,
        ),
        const SizedBox(width: MMSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: MMSizes.spaceBtwItems),
        const MMCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MMSizes.md,
          color: MMColors.textWhite,
          backgroundColor: MMColors.primaryColor2,
        )
      ],
    );
  }
}
