import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_application_2/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MMSignupForm extends StatelessWidget {
  const MMSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: MMColors.containerGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: MMColors.primaryColor2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 41, 41, 41), width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: MMTexts.firstName,
                    prefixIcon: const Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: MMSizes.spaceBtwInputFields),
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: InputDecoration(
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
                  labelText: MMTexts.lastName,
                  prefixIcon: const Icon(Iconsax.user)),
            )),
          ],
        ),

        // username
        const SizedBox(height: MMSizes.spaceBtwInputFields),
        TextFormField(
          expands: false,
          decoration: InputDecoration(
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
              labelText: MMTexts.username,
              prefixIcon: const Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: MMSizes.spaceBtwInputFields),
        //Email
        TextFormField(
          expands: false,
          decoration: InputDecoration(
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
              labelText: MMTexts.email,
              prefixIcon: const Icon(Icons.email_outlined)),
        ),
        const SizedBox(height: MMSizes.spaceBtwInputFields),

        //Passwors
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
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
              labelText: MMTexts.password,
              prefixIcon: const Icon(Icons.password),
              suffixIcon: const Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: MMSizes.spaceBtwSections),
        // Checkbox
        MMTermsAndConditionCheckbox(),

        const SizedBox(height: MMSizes.spaceBtwSections),
        //SingUp button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            style: ElevatedButton.styleFrom(
                backgroundColor: MMColors.primaryColor2,
                padding: const EdgeInsets.all(12),
                side: BorderSide(width: 1, color: MMColors.primaryColor2),
                minimumSize: const Size(double.infinity, 55)),
            child: const Text(MMTexts.createAccount),
          ),
        ),
      ],
    ));
  }
}
