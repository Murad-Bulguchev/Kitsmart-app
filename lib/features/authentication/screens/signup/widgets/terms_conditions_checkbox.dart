import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/text_strings.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class MMTermsAndConditionCheckbox extends StatelessWidget {
  const MMTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${MMTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${MMTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MMColors.textWhite : MMColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? MMColors.textWhite : MMColors.primaryColor)),
          TextSpan(
              text: '${MMTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MMTexts.termsOfuse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MMColors.textWhite : MMColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? MMColors.textWhite : MMColors.primaryColor))
        ]))
      ],
    );
  }
}
