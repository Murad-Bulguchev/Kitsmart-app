import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/succes_screen/succes_screen.dart';
import 'package:kitsmart/features/authentication/screens/login/login.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/image_strings.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/constants/text_strings.dart';
import 'package:kitsmart/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(MMImages.deliveredEmailIllustration),
                width: MMHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: MMSizes.spaceBtwSections,
              ),
              Text(MMTexts.confirmEmoil,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MMSizes.spaceBtwItems),
              Text(MMTexts.confirmEmoilSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MMSizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccesScreen(
                            title: MMTexts.yourAccountCreatedTitle,
                            image: MMImages.staticSuccessIllustration,
                            subTitle: MMTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12),
                          backgroundColor: MMColors.primaryColor2,
                          side: const BorderSide(
                              color: MMColors.primaryColor2, width: 1),
                          minimumSize: const Size(double.infinity, 55)),
                      child: const Text(MMTexts.tContinue))),
              const SizedBox(height: MMSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(12),
                      minimumSize: const Size(double.infinity, 55)),
                  child: const Text(MMTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
