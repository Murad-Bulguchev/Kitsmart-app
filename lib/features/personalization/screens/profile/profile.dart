import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/appbar/appbar.dart';
import 'package:kitsmart/common/widgets/images/mm_circular_image.dart';
import 'package:kitsmart/common/widgets/texts/section_heading.dart';
import 'package:kitsmart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:kitsmart/utils/constants/image_strings.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MMAppBar(showBackArrow: true, title: Text('Профиль')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MMCircularImage(
                        image: MMImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(height: MMSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MMSizes.spaceBtwItems),
              const MMSectionHeading(
                  title: 'Profile information', showActionButton: false),
              const SizedBox(height: MMSizes.spaceBtwItems),
              MMProfileMenu(
                  title: 'Name', value: 'coding_with_mm', onPressed: () {}),
              MMProfileMenu(
                  title: 'Usename', value: 'coding_with_mm', onPressed: () {}),
              const SizedBox(height: MMSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MMSizes.spaceBtwItems),
              const MMSectionHeading(
                  title: 'Profile information', showActionButton: false),
              const SizedBox(height: MMSizes.spaceBtwItems),
              MMProfileMenu(
                title: 'User ID',
                value: '45689',
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              MMProfileMenu(
                  title: 'E-mail', value: 'coding_with_t', onPressed: () {}),
              MMProfileMenu(
                  title: 'Phone Number',
                  value: '+92-317-8059528',
                  onPressed: () {}),
              MMProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              MMProfileMenu(
                  title: 'Date of Birth',
                  value: '10 Oct, 1994',
                  onPressed: () {}),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
