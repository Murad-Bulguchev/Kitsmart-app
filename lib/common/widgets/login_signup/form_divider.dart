import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/text_strings.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class MMFormDivider extends StatelessWidget {
  const MMFormDivider({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? MMColors.containerGrey : MMColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(
          MMTexts.orSignInWith,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
                color: dark ? MMColors.containerGrey : MMColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
