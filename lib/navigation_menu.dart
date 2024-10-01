import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/producst/cart/cart_menu_icon.dart';
import 'package:flutter_application_2/features/shop/screens/home/home.dart';
import 'package:flutter_application_2/features/shop/screens/store/store.dart';
import 'package:flutter_application_2/features/shop/screens/wishlist/wishlist.dart';
import 'package:flutter_application_2/features/personalization/screens/settings/settings.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MMHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: darkMode ? MMColors.containerGrey : Colors.white,
            indicatorColor: darkMode
                ? MMColors.textWhite.withOpacity(0.1)
                : MMColors.black.withOpacity(0.1),
            destinations: [
              const NavigationDestination(
                icon: Icon(Iconsax.home_1),
                label: 'Главная',
              ),
              const NavigationDestination(
                  icon: Icon(Iconsax.search_status), label: 'Каталог'),
              const NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Избранное'),
              const NavigationDestination(
                  icon: Icon(Iconsax.user), label: 'Профиль'),
              NavigationDestination(
                  icon: MMCartContainerIcon(
                    onPressed: () {},
                  ),
                  label: 'Корзина '),
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const SettingsScreen(),
    const SettingsScreen(),
  ];
}
