import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/constants/text_strings.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
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
              padding: EdgeInsets.all(10),
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
                  child: const Text(MMTexts.done),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MMColors.primaryColor2,
                    side: BorderSide(width: 1, color: MMColors.primaryColor2),
                    padding: const EdgeInsets.all(12),
                    minimumSize: const Size(double.infinity, 55),
                  ),
                ),
              ),
              const SizedBox(height: MMSizes.spaceBtwSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(MMTexts.resendEmail),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: MMColors.textButtonColor,
                      padding: const EdgeInsets.all(12),
                      minimumSize: const Size(double.infinity, 55),
                    )),
              ),
            ],
          ), // Column
        ), // Padding
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
