import 'package:flutter/material.dart';
import 'package:kitsmart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:kitsmart/features/authentication/screens/signup/signup.dart';
import 'package:kitsmart/navigation_menu.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:kitsmart/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MMLoginForm extends StatelessWidget {
  const MMLoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: MMSizes.spaceBtwSections),
            child: Column(
              children: [
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
                      borderSide:
                          const BorderSide(color: MMColors.primaryColor2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 41, 41, 41), width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: MMSizes.spaceBtwInputFields),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MMColors.containerGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(Icons.password_outlined),
                    labelText: MMTexts.password,
                    suffixIcon: const Icon(Iconsax.eye_slash),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 41, 41, 41), width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: MMColors.primaryColor2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: MMSizes.spaceBtwInputFields / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text(MMTexts.rememberMe)
                      ],
                    ),
                    TextButton(
                        onPressed: () => Get.to(() => const ForgetPassword()),
                        child: const Text(
                          MMTexts.forgetPassword,
                          style: TextStyle(color: MMColors.textButtonColor),
                        )),
                  ],
                ),
                const SizedBox(height: MMSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        minimumSize: const Size(double.infinity, 55),
                        backgroundColor: MMColors.primaryColor2,
                        side: const BorderSide(color: MMColors.primaryColor2)),
                    child: const Text(MMTexts.signIn),
                  ),
                ),
                const SizedBox(
                  height: MMSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        minimumSize: const Size(double.infinity, 55),
                        side: const BorderSide(color: MMColors.primaryColor2)),
                    child: const Text(MMTexts.createAccount),
                  ),
                ),
              ],
            )));
  }
}
