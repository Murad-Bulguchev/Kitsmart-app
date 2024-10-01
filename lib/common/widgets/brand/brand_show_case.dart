import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_cart.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/rounded_container.dart';

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
        margin: EdgeInsets.only(bottom: MMSizes.spaceBtwItems),
        child: Column(
          children: [
            MMBrandCart(
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
