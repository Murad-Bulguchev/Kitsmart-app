import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/appbar/appbar.dart';
import 'package:kitsmart/common/widgets/brand/mm_brand_cart.dart';
import 'package:kitsmart/common/widgets/layouts/grid_layout.dart';
import 'package:kitsmart/common/widgets/texts/section_heading.dart';
import 'package:kitsmart/features/shop/screens/brand/brand_products.dart';
import 'package:kitsmart/utils/constants/sizes.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MMAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              const MMSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: MMSizes.spaceBtwItems),
              MMGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => MMBrandCart(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
