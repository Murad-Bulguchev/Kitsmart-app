import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class MMCircularImage extends StatelessWidget {
  const MMCircularImage(
      {super.key,
      this.width = 56,
      this.height = 56,
      this.overlayColor,
      this.backgroundColor,
      required this.image,
      this.fit = BoxFit.cover,
      this.padding = MMSizes.sm,
      this.isNetworkImage = false});

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (MMHelperFunctions.isDarkMode(context)
                  ? MMColors.black
                  : MMColors.textWhite),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
