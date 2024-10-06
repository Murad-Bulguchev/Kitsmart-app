import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/texts/section_heading.dart';
import 'package:kitsmart/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:kitsmart/features/shop/screens/product_detalis/widgets/bottom_add_to_cart_widget.dart';
import 'package:kitsmart/features/shop/screens/product_detalis/widgets/producst_detali_image_slider.dart';
import 'package:kitsmart/features/shop/screens/product_detalis/widgets/product_atributes.dart';
import 'package:kitsmart/features/shop/screens/product_detalis/widgets/product_meta_data.dart';
import 'package:kitsmart/features/shop/screens/product_detalis/widgets/rating_share_widget.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetaliScreen extends StatelessWidget {
  const ProductDetaliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MMBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProducstDetaliImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: MMSizes.defaultSpace,
                  left: MMSizes.defaultSpace,
                  bottom: MMSizes.defaultSpace),
              child: Column(
                children: [
                  const MMRatingAndShare(),
                  const MMProductMetaData(),
                  const MMProductAtributes(),
                  const SizedBox(height: MMSizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: MMSizes.spaceBtwSections),
                  const MMSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: MMSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Build Nike Sleeve less vest. There are more things that can be added but i ammoress vest. There are more things that can be added but i ammoress vest. There are more things that can be added but i ammoress vest. There are more things that can be added but i ammor',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: MMSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MMSectionHeading(
                          title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ),
                  const SizedBox(height: MMSizes.spaceBtwSections)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
