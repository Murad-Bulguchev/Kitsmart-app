import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/producst/ratings/rating_indicator.dart';
import 'package:flutter_application_2/features/shop/screens/product_reviews/widgets/rating_progress_indecator.dart';
import 'package:flutter_application_2/features/shop/screens/product_reviews/widgets/user_reviews_card.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MMAppBar(
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
              MMRatingIndicator(rating: 3.5),
              Text('12.646', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MMSizes.spaceBtwSections),
              UserReviewsCard(),
              UserReviewsCard(),
              UserReviewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
