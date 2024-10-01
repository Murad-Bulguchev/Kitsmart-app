import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/styles/spacing_styles.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/constants/text_strings.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: MMSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: MMHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: MMSizes.spaceBtwSections,
            ),
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: MMSizes.spaceBtwItems),
            Text(subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: MMSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(MMTexts.tContinue),
                style: ElevatedButton.styleFrom(
                    backgroundColor: MMColors.primaryColor2,
                    side: BorderSide(width: 1, color: MMColors.primaryColor2),
                    padding: const EdgeInsets.all(12),
                    minimumSize: const Size(double.infinity, 55)),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
