import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/chips/choice_chip.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/product_price_text.dart';
import 'package:flutter_application_2/common/widgets/texts/product_title_text.dart';
import 'package:flutter_application_2/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/rounded_container.dart';

class MMProductAtributes extends StatelessWidget {
  const MMProductAtributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Column(children: [
      MMRoundedContainer(
          padding: const EdgeInsets.all(MMSizes.md),
          backgroundColor: dark ? MMColors.containerGrey : MMColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const MMSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: MMSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MMProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                            backgroundColor: Color.fromARGB(0, 94, 94, 94),
                          ),
                          Text(
                            '\25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: MMSizes.spaceBtwItems),
                          const MMProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const MMProductTitleText(
                              title: 'Stock : ',
                              smallSize: true,
                              backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const MMProductTitleText(
                  title:
                      'This is the Description of the Priduct  and it  can go up to max 4 lines ',
                  backgroundColor: Color.fromARGB(1, 0, 0, 0))
            ],
          )),
      const SizedBox(height: MMSizes.spaceBtwItems),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MMSectionHeading(
            title: 'Colors',
            showActionButton: false,
          ),
          SizedBox(height: MMSizes.spaceBtwItems / 2),
          Wrap(
            spacing: 8,
            children: [
              MMChoiceChip(
                  text: 'Green', selected: true, onSelected: (value) {}),
              MMChoiceChip(
                  text: 'Blue', selected: false, onSelected: (value) {}),
              MMChoiceChip(
                  text: 'Yellow', selected: false, onSelected: (value) {}),
            ],
          )
        ],
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MMSectionHeading(title: 'Size'),
          SizedBox(height: MMSizes.spaceBtwItems / 2),
          Wrap(
            spacing: 8,
            children: [
              MMChoiceChip(text: 'EU 34', selected: true),
              MMChoiceChip(text: 'EU 36', selected: false),
              MMChoiceChip(text: 'EU 38', selected: false),
            ],
          )
        ],
      )
    ]);
  }
}
