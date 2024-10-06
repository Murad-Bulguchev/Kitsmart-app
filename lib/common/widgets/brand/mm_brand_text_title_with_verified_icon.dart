import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kitsmart/common/widgets/brand/mm_brand_title_text.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/enums.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class MMBrandTextTitleWithVerifiedIcon extends StatelessWidget {
  const MMBrandTextTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = MMColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MMBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ), // TBrandTitleText
        ), // Flexible
        const SizedBox(width: MMSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: MMSizes.iconsXs),
      ], // Row
    );
  }
}
