import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/device/device_utility.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';

class MMTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MMTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MMColors.black : MMColors.textWhite,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: MMColors.primaryColor2,
        labelColor: dark ? MMColors.textWhite : MMColors.primaryColor2,
        unselectedLabelColor: MMColors.darkGrey,
      ), // TabBar
    ); // Material
  }

  @override
  Size get preferredSize => Size.fromHeight(MMDeviceUtils.getAppBarHeight());
}
