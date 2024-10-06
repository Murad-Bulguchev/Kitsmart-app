import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/image_strings.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/constants/text_strings.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(CupertinoIcons.clear)))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(MMImages.deliveredEmailIllustration),
                width: MMHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: MMSizes.spaceBtwSections),
              // Title & SubTitle
              Text(
                MMTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MMSizes.spaceBtwItems),
              Text(
                MMTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MMSizes.spaceBtwSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MMColors.primaryColor2,
                    side: const BorderSide(
                        width: 1, color: MMColors.primaryColor2),
                    padding: const EdgeInsets.all(12),
                    minimumSize: const Size(double.infinity, 55),
                  ),
                  child: const Text(MMTexts.done),
                ),
              ),
              const SizedBox(height: MMSizes.spaceBtwSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: MMColors.textButtonColor,
                      padding: const EdgeInsets.all(12),
                      minimumSize: const Size(double.infinity, 55),
                    ),
                    child: const Text(MMTexts.resendEmail)),
              ),
            ],
          ), // Column
        ), // Padding
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
