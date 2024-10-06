import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/appbar/appbar.dart';
import 'package:kitsmart/common/widgets/icon/mm_circular_icon.dart';
import 'package:kitsmart/common/widgets/layouts/grid_layout.dart';
import 'package:kitsmart/common/widgets/producst/product_cards/producst_card_vertical.dart';
import 'package:kitsmart/features/shop/screens/home/home.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MMAppBar(
        title:
            Text('Список', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MMCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              MMGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MMProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
