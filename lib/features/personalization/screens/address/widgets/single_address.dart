import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:kitsmart/utils/theme/custom_themes/rounded_container.dart';
import 'package:iconsax/iconsax.dart';

class MMSingleAddress extends StatelessWidget {
  const MMSingleAddress({super.key, required this.selectedAddress});
  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);

    return MMRoundedContainer(
        padding: const EdgeInsets.all(MMSizes.md),
        width: double.infinity,
        showBorder: true,
        backgroundColor: selectedAddress
            ? MMColors.primaryColor2.withOpacity(0.5)
            : Colors.transparent,
        borderColor:
            selectedAddress ? MMColors.darkerGrey : MMColors.containerGrey,
        margin: const EdgeInsets.only(bottom: MMSizes.spaceBtwItems),
        child: Stack(
          children: [
            Positioned(
                right: 5,
                top: 0,
                child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                    color: selectedAddress
                        ? dark
                            ? MMColors.light
                            : MMColors.dark
                        : null)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Мурад Булгучев',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: MMSizes.sm / 2),
                const Text('+7(988) 805-29-90'),
                const SizedBox(height: MMSizes.sm / 2),
                Text(
                  'Город Магас. ул Дьякова дом № номер 37',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            )
          ],
        ));
  }
}
