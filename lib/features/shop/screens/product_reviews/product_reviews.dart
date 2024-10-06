import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/appbar/appbar.dart';
import 'package:kitsmart/common/widgets/producst/ratings/rating_indicator.dart';
import 'package:kitsmart/features/shop/screens/product_reviews/widgets/rating_progress_indecator.dart';
import 'package:kitsmart/features/shop/screens/product_reviews/widgets/user_reviews_card.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MMAppBar(
        title: Text('Reviews & Rating'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and reviews are verified and are from people who use the same type of device that you se.'),
              const SizedBox(height: MMSizes.spaceBtwItems),
              const RatingProgressIndecator(),
              const MMRatingIndicator(rating: 3.5),
              Text('12.646', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MMSizes.spaceBtwSections),
              const UserReviewsCard(),
              const UserReviewsCard(),
              const UserReviewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
