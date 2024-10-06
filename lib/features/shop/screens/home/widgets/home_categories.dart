import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/image_texts_widgets/vertical_image_text.dart';
import 'package:kitsmart/features/shop/screens/sub_category/sub_categories.dart';
import 'package:kitsmart/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class MMHomeCategories extends StatelessWidget {
  const MMHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return MMVerticalImageText(
              image: MMImages.google,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubCategoriesScreen()));
        },
      ),
    );
  }
}
