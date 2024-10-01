import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/producst_card_harizantal.dart';
import 'package:flutter_application_2/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MMAppBar(
        title: Text('Sport'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              const MMRoudedImage(
                  width: double.infinity,
                  applyImageRadius: true,
                  imageUrl: MMImages.promoBanner1),
              const SizedBox(height: MMSizes.spaceBtwSections),
              Column(
                children: [
                  MMSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: MMSizes.spaceBtwItems / 2),
                  SizedBox(
                      height: 120,
                      child: ListView.separated(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: MMSizes.spaceBtwItems),
                          itemBuilder: (context, index) =>
                              const MMProductCardHarizantal()))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
