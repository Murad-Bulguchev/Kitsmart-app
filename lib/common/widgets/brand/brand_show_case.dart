import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/brand/mm_brand_cart.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:kitsmart/utils/theme/custom_themes/rounded_container.dart';

class MMBrandShowcase extends StatelessWidget {
  const MMBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MMRoundedContainer(
        showBorder: true,
        borderColor: MMHelperFunctions.isDarkMode(context)
            ? const Color.fromARGB(55, 255, 255, 255)
            : const Color.fromARGB(83, 36, 36, 36),
        padding: const EdgeInsets.all(MMSizes.md),
        backgroundColor: Colors.transparent,
        margin: const EdgeInsets.only(bottom: MMSizes.spaceBtwItems),
        child: Column(
          children: [
            const MMBrandCart(
              showBorder: false,
            ),
            const SizedBox(height: MMSizes.spaceBtwItems),
            Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList(),
            )
          ],
        ));
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
      child: MMRoundedContainer(
          height: 100,
          backgroundColor: MMHelperFunctions.isDarkMode(context)
              ? MMColors.containerGrey
              : MMColors.light,
          margin: const EdgeInsets.only(right: MMSizes.sm),
          padding: const EdgeInsets.all(MMSizes.md),
          child: Image(fit: BoxFit.contain, image: AssetImage(image))));
}
