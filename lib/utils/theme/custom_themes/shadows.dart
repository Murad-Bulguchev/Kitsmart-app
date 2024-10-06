import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';

class MMShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: MMColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  ); // BoxShadow

  static final horizontalProductShadow = BoxShadow(
    color: MMColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  ); // BoxShadow
}
