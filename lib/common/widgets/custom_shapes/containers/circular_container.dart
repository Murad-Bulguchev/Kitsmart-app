import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';

class MMCircularContainer extends StatelessWidget {
  const MMCircularContainer(
      {super.key,
      this.child,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.margin = EdgeInsets.zero, 
      this.backgroundColor = MMColors.textWhite});

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets margin; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin, 
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}