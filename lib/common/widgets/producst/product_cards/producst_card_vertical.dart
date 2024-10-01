import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_text_title_with_verified_icon.dart';
import 'package:flutter_application_2/common/widgets/icon/mm_circular_icon.dart';
import 'package:flutter_application_2/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/product_price_text.dart';
import 'package:flutter_application_2/features/shop/screens/product_detalis/product_detali.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/rounded_container.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/shadows.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../texts/product_title_text.dart';

class MMProductCardVertical extends StatelessWidget {
  const MMProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetaliScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [MMShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(MMSizes.productImageRadius),
            color: dark ? MMColors.containerGrey : MMColors.textWhite),
        child: Column(
          children: [
            MMRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MMSizes.xs),
              backgroundColor:
                  dark ? MMColors.containerGrey : MMColors.textWhite,
              child: Stack(
                children: [
                  Positioned(
                      child: MMRoudedImage(
                          imageUrl: MMImages.productImage1,
                          applyImageRadius: true)),
                  Positioned(
                      top: 145,
                      child: MMRoundedContainer(
                        radius: MMSizes.sm,
                        backgroundColor: const Color.fromARGB(255, 255, 41, 105)
                            .withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: MMSizes.sm, vertical: MMSizes.xs),
                        child: Text('15%',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255))),
                      )),
                  const Positioned(
                      top: -10,
                      right: -8,
                      child: MMCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: MMSizes.spaceBtwItems / 2),
            Padding(
              padding:
                  const EdgeInsets.only(left: MMSizes.sm, right: MMSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  MMProductTitleText(
                    title:
                        'Смартфон Apple iPhone 16 Pro Max 256GB nanoSim/eSim Desert Titanium',
                    smallSize: true,
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                  SizedBox(height: MMSizes.spaceBtwItems / 2),
                  MMBrandTextTitleWithVerifiedIcon(title: 'в наличии')
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: MMSizes.sm),
                  child: MMProductPriceText(price: '97 564'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: MMColors.primaryColor2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MMSizes.cardRadiusMd),
                      bottomRight: Radius.circular(MMSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                      width: MMSizes.iconLg * 2,
                      height: MMSizes.iconLg * 1.2,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: MMColors.textWhite,
                          ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
