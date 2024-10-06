import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(MMSizes.defaultSpace),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: MMHelperFunctions.screenWidth() * 0.8,
              height: MMHelperFunctions.screenHeight() * 0.9,
              image: AssetImage(image),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: MMSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
