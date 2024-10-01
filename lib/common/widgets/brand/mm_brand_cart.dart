import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_text_title_with_verified_icon.dart';
import 'package:flutter_application_2/common/widgets/images/mm_circular_image.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/enums.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/rounded_container.dart';

class MMBrandCart extends StatelessWidget {
  const MMBrandCart({super.key, this.showBorder = true, this.onTap});

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MMRoundedContainer(
          padding: const EdgeInsets.all(MMSizes.sm),
          showBorder: showBorder,
          borderColor: MMHelperFunctions.isDarkMode(context)
              ? const Color.fromARGB(55, 255, 255, 255)
              : const Color.fromARGB(83, 36, 36, 36),
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              Flexible(
                child: MMCircularImage(
                  isNetworkImage: false,
                  image: MMImages.google,
                  backgroundColor: const Color.fromARGB(0, 255, 28, 28),
                  overlayColor: MMHelperFunctions.isDarkMode(context)
                      ? MMColors.textWhite
                      : MMColors.black,
                ),
              ),
              const SizedBox(width: MMSizes.spaceBtwItems / 2),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MMBrandTextTitleWithVerifiedIcon(
                      title: 'в наличии', brandTextSize: TextSizes.large),
                  Text('100 продуктов',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium)
                ],
              ))
            ],
          )),
    );
  }
}
