import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/appbar/appbar.dart';
import 'package:kitsmart/common/widgets/custom_shapes/containers/mm-primary-header-settings.dart';
import 'package:kitsmart/common/widgets/list_tiles/user_menu_tile.dart';
import 'package:kitsmart/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:kitsmart/common/widgets/texts/section_heading.dart';
import 'package:kitsmart/features/personalization/screens/address/address.dart';
import 'package:kitsmart/features/personalization/screens/profile/profile.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MMPrimaryHeaderSettings(
                child: Column(
              children: [
                MMAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: MMColors.textWhite))),
                MMUserProfileTitle(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: MMSizes.spaceBtwSections)
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(MMSizes.defaultSpace),
              child: Column(
                children: [
                  const MMSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: MMSizes.spaceBtwItems),
                  MMSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address',
                      onTap: () => Get.to(() => const UserAddressScreen())),
                  const MMSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout'),
                  const MMSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders'),
                  const MMSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  const MMSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'),
                  const MMSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message'),
                  const MMSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),
                  const SizedBox(height: MMSizes.spaceBtwSections),
                  const MMSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: MMSizes.spaceBtwSections),
                  const MMSettingsMenuTile(
                      title: 'Load Fata',
                      icon: Iconsax.document_upload,
                      subTitle: 'Upload Data to your Cloud Firebase'),
                  MMSettingsMenuTile(
                    title: 'Geolocation',
                    icon: Iconsax.location,
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MMSettingsMenuTile(
                      title: 'Safe Mode',
                      icon: Iconsax.security_user,
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  MMSettingsMenuTile(
                    title: 'HD Image Quatily',
                    icon: Iconsax.image,
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(height: MMSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Выйти'),
                    ),
                  ),
                  const SizedBox(height: MMSizes.spaceBtwSections)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
