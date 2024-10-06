import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/constants/text_strings.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: MMSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              MMTexts.homeAppbarSubTitle,
              style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: MMHelperFunctions.isDarkMode(context)
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : const Color.fromARGB(255, 0, 0, 0)),
            ),
            // MMCartContainerIcon(
            //     onPressed: () {},
            //     iconColor: MMHelperFunctions.isDarkMode(context)
            //         ? const Color.fromARGB(255, 255, 255, 255)
            //         : const Color.fromARGB(255, 0, 0, 0))
          ],
        ));
  }
}
