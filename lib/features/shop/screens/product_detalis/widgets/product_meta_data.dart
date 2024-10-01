import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_text_title_with_verified_icon.dart';
import 'package:flutter_application_2/common/widgets/images/mm_circular_image.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/product_price_text.dart';
import 'package:flutter_application_2/common/widgets/texts/product_title_text.dart';
import 'package:flutter_application_2/utils/constants/enums.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
// import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/rounded_container.dart';

class MMProductMetaData extends StatelessWidget {
  const MMProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = MMHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Positioned(
                child: MMRoundedContainer(
              radius: MMSizes.sm,
              backgroundColor:
                  const Color.fromARGB(255, 255, 41, 105).withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: MMSizes.sm, vertical: MMSizes.xs),
              child: Text('15%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: const Color.fromARGB(255, 255, 255, 255))),
            )),
            const SizedBox(width: MMSizes.spaceBtwItems),

            Text('\250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: MMSizes.spaceBtwItems),
            const MMProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: MMSizes.spaceBtwItems / 1.5),

        const MMProductTitleText(title: 'Green Nike Sports', backgroundColor: Color.fromARGB(0, 0, 0, 0), ),
        const SizedBox(height: MMSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const MMProductTitleText(title: 'Status', backgroundColor: Color.fromARGB(0, 0, 0, 0)),
            const SizedBox(width: MMSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        const SizedBox(height: MMSizes.spaceBtwItems / 1.5),

        const Row(
          children: [
            MMCircularImage(image: MMImages.facebook),
            MMBrandTextTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,)
          ],
        )
      ],
    );
  }
}
