import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/producst/ratings/rating_indicator.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/image_strings.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:kitsmart/utils/theme/custom_themes/rounded_container.dart';
import 'package:readmore/readmore.dart';

class UserReviewsCard extends StatelessWidget {
  const UserReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(MMImages.user)),
                const SizedBox(width: MMSizes.spaceBtwItems),
                Text('Murad Bulguchev',
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: MMSizes.spaceBtwItems),
        Row(
          children: [
            const MMRatingIndicator(rating: 4),
            const SizedBox(width: MMSizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: MMSizes.spaceBtwItems),
        const ReadMoreText(
          'Try checking your spelling or use more general term. Also, you can explain to us the illustration you need, and well draw it for free in one of the existing styles.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MMColors.primaryColor2),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MMColors.primaryColor2),
        ),
        MMRoundedContainer(
            backgroundColor: dark ? MMColors.containerGrey : MMColors.grey,
            child: Padding(
                padding: const EdgeInsets.all(MMSizes.md),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('T-S, Store',
                            style: Theme.of(context).textTheme.titleMedium),
                        Text('02 Nov, 2023',
                            style: Theme.of(context).textTheme.bodyMedium)
                      ],
                    ),
                    const SizedBox(height: MMSizes.spaceBtwItems),
                    const ReadMoreText(
                      'Try checking your spelling or use more general term. Also, you can explain to us the illustration you need, and well draw it for free in one of the existing styles.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimExpandedText: 'show less',
                      trimCollapsedText: ' show more',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MMColors.primaryColor2),
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MMColors.primaryColor2),
                    ),
                  ],
                ))),
        const SizedBox(
          height: MMSizes.spaceBtwItems,
        )
      ],
    );
  }
}
