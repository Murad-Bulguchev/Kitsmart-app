import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/device/device_utility.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class MMSearchContainer extends StatelessWidget {
  const MMSearchContainer(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal_1,
      this.showBackground = true,
      this.showBorder = true,
      this.onTap,
      this.padding =
          const EdgeInsets.symmetric(horizontal: MMSizes.defaultSpace)});

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);

    return GestureDetector(
      child: Padding(
        padding: padding,
        child: Container(
          width: MMDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MMSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? MMColors.containerGrey
                    : const Color.fromARGB(255, 238, 238, 238)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: showBorder
                ? Border.all(color: const Color.fromARGB(131, 71, 71, 71))
                : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: MMColors.darkGrey),
              const SizedBox(width: MMSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
