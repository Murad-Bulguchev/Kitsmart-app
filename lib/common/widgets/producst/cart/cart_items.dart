import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_text_title_with_verified_icon.dart';
import 'package:flutter_application_2/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:flutter_application_2/common/widgets/texts/product_title_text.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';

class MMCartItems extends StatelessWidget {
  const MMCartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MMRoudedImage(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(MMSizes.sm),
            backgroundColor: MMHelperFunctions.isDarkMode(context)
                ? MMColors.darkerGrey
                : MMColors.light,
            imageUrl: MMImages.productImage1),
        const SizedBox(width: MMSizes.spaceBtwItems),
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MMBrandTextTitleWithVerifiedIcon(title: 'Apple'),
            const Flexible(
              child: MMProductTitleText(
                  title: 'Black Sports shoes',
                  maxLines: 1,
                  backgroundColor: Color.fromARGB(0, 0, 0, 0)),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'Size', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        ))
      ],
    );
  }
}
