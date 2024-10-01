import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/authentication/controllers.onboarding/onboarding.controllers.dart';
import 'package:flutter_application_2/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_application_2/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_application_2/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_application_2/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: MMImages.onBoardingImage1,
              title: MMTexts.onBoardingTitle1,
              subTitle: MMTexts.onBoardingSubTitle1,
            ), 
            OnBoardingPage(
              image: MMImages.onBoardingImage2,
              title: MMTexts.onBoardingTitle2,
              subTitle: MMTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: MMImages.onBoardingImage3,
              title: MMTexts.onBoardingTitle3,
              subTitle: MMTexts.onBoardingSubTitle3,
            ),
          ],
        ),
        const OnBoardingSkip(),
        const OnBoardingDotNavigation(),
        const OnBoardingNextButton()
      ],
    ));
  }
}
