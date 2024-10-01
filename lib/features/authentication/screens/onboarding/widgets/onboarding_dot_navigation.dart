import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/authentication/controllers.onboarding/onboarding.controllers.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/device/device_utility.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MMHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MMDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MMSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor:
                dark ? MMColors.primaryColor2 : MMColors.primaryColor2,
            dotHeight: 12),
      ),
    );
  }
}
