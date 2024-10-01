import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class MMSocialButtons extends StatelessWidget {
  const MMSocialButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(75, 63, 63, 63)),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: MMSizes.iconMd,
                  height: MMSizes.iconMd,
                  image: AssetImage(MMImages.google))),
        ),
        const SizedBox(
          width: MMSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(75, 63, 63, 63)),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: MMSizes.iconMd,
                  height: MMSizes.iconMd,
                  image: AssetImage(MMImages.facebook))),
        ),
      ],
    );
  }
}
