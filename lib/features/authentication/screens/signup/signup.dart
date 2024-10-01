import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_application_2/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_application_2/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Icon(Iconsax.user),
                Text(MMTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: MMSizes.spaceBtwSections),

                // Form
                const MMSignupForm(),
                const SizedBox(height: MMSizes.spaceBtwSections),

                const MMFormDivider(),
                const SizedBox(height: MMSizes.spaceBtwSections),

                const MMSocialButtons()
              ],
            ),
          ),
        ));
  }
}
