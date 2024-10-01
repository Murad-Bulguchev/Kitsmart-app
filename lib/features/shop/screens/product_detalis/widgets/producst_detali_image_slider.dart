import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_application_2/common/widgets/icon/mm_circular_icon.dart';
import 'package:flutter_application_2/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProducstDetaliImageSlider extends StatelessWidget {
  const ProducstDetaliImageSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return MMCurvedEdgeWidget(
      child: Container(
        color: MMColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MMSizes.defaultSpace * 2),
                child: Center(
                    child: Image(image: AssetImage(MMImages.productImage1))),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 30,
                left: MMSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: MMSizes.spaceBtwItems),
                    itemBuilder: (_, index) => MMRoudedImage(
                        width: 80,
                        backgroundColor: MMColors.textWhite,
                        border: Border.all(color: MMColors.primaryColor2),
                        padding: const EdgeInsets.all(MMSizes.sm),
                        imageUrl: MMImages.productImage1),
                  ),
                )),
            const MMAppBar(
              showBackArrow: true,
              actions: [
                MMCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
