import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class MMCircularIcon extends StatelessWidget {
  /// A custom Circular Icon widget with a background color.
  ///
  /// Properties are:
  /// Container [width], [height], & [backgroundColor].
  ///
  /// Icon's [size], [color] & [onPressed]
  ///
  const MMCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = MMSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : MMHelperFunctions.isDarkMode(context)
                ? MMColors.black.withOpacity(0)
                : MMColors.textWhite.withOpacity(0),
        borderRadius: BorderRadius.circular(100),
      ), // BoxDecoration
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    ); // Container
  }
}
