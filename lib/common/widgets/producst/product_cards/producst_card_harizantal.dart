import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_text_title_with_verified_icon.dart';
import 'package:flutter_application_2/common/widgets/icon/mm_circular_icon.dart';
import 'package:flutter_application_2/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/product_price_text.dart';
import 'package:flutter_application_2/common/widgets/texts/product_title_text.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/rounded_container.dart';
import 'package:iconsax/iconsax.dart';

class MMProductCardHarizantal extends StatelessWidget {
  const MMProductCardHarizantal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MMSizes.productImageRadius),
          color: dark ? MMColors.darkerGrey : MMColors.lightContainer),
      child: Row(
        children: [
          MMRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(MMSizes.md),
              backgroundColor: dark ? MMColors.dark : MMColors.light,
              child: Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: MMRoudedImage(
                      imageUrl: MMImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  Positioned(
                      top: 60,
                      child: MMRoundedContainer(
                          radius: MMSizes.sm,
                          backgroundColor: MMColors.secondary.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: MMSizes.sm, vertical: MMSizes.xs),
                          child: Text('25%',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(color: MMColors.black)))),
                  Positioned(
                      top: -10,
                      right: 0,
                      child: MMCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              )),
          SizedBox(
            width: 130,
            child: Padding(
              padding: EdgeInsets.only(top: MMSizes.sm, left: MMSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MMProductTitleText(
                          smallSize: true,
                          title: 'Creen Nike Harf Sleeves Nike Harf',
                          backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                      SizedBox(height: MMSizes.spaceBtwItems / 2),
                      MMBrandTextTitleWithVerifiedIcon(title: 'Apple')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MMProductPriceText(price: '97 555'),
                      Container(
                        decoration: const BoxDecoration(
                            color: MMColors.primaryColor2,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(MMSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(MMSizes.productImageRadius),
                            )),
                        child: const SizedBox(
                          width: MMSizes.iconLg * 1.2,
                          height: MMSizes.iconLg * 1.2,
                          child: Center(
                              child:
                                  Icon(Iconsax.add, color: MMColors.textWhite)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
