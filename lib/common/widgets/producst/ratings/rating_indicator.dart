import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class MMRatingIndicator extends StatelessWidget {
  const MMRatingIndicator({super.key, required this.rating});

  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: MMColors.grey,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: MMColors.primaryColor2,
            ));
  }
}
