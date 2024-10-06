import 'package:flutter/material.dart';
import 'package:kitsmart/features/authentication/controllers.onboarding/onboarding.controllers.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: MMSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Пропустить',
              style: TextStyle(color: Color.fromARGB(255, 156, 138, 255)))),
    );
  }
}
