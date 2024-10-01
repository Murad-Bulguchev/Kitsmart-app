import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';

class MMVerticalImageText extends StatelessWidget {
  const MMVerticalImageText(
      {super.key,
      required this.image,
      required this.title,
      this.textColor = MMColors.textWhite,
      this.backgroundColor = const Color.fromARGB(255, 0, 0, 0),
      this.onTap});

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MMSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 50,
              padding: const EdgeInsets.all(MMSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (MMHelperFunctions.isDarkMode(context)
                        ? MMColors.black
                        : MMColors.textWhite),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: MMHelperFunctions.isDarkMode(context)
                      ? MMColors.light
                      : const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(height: MMSizes.spaceBtwItems / 2),
            SizedBox(
              width: 40,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
