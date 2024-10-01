import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(
          MMSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MMTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: MMSizes.spaceBtwItems),
            Text(MMTexts.forgetSubPassword,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: MMSizes.spaceBtwSections * 2),
            TextFormField(
                decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email_outlined),
              labelText: MMTexts.email,
              filled: true,
              fillColor: MMColors.containerGrey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: MMColors.primaryColor2),
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 41, 41, 41), width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
            )),
            const SizedBox(height: MMSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(MMTexts.submit),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MMColors.primaryColor2,
                  padding: const EdgeInsets.all(12),
                  side: BorderSide(width: 1, color: MMColors.primaryColor2),
                  minimumSize: const Size(double.infinity, 55),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
