import 'package:flutter/material.dart';
import 'package:kitsmart/features/shop/screens/product_reviews/widgets/progress_indecator_and_reting.dart';

class RatingProgressIndecator extends StatelessWidget {
  const RatingProgressIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
            flex: 7,
            child: Column(
              children: [
                ProgressIndecatorAndReting(text: '5', value: 1.0),
                ProgressIndecatorAndReting(text: '4', value: 0.8),
                ProgressIndecatorAndReting(text: '3', value: 0.6),
                ProgressIndecatorAndReting(text: '2', value: 0.4),
                ProgressIndecatorAndReting(text: '1', value: 0.2),
              ],
            ))
      ],
    );
  }
}
