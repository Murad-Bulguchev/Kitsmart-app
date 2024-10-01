import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/MMTabBar.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_cart.dart';
import 'package:flutter_application_2/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_application_2/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_2/common/widgets/producst/cart/cart_menu_icon.dart';
import 'package:flutter_application_2/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_2/features/shop/screens/brand/all_brands.dart';
import 'package:flutter_application_2/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: MMAppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  left: MMSizes.md,
                  right: MMSizes.md,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Каталог',
                        style: Theme.of(context).textTheme.headlineMedium),
                    MMCartContainerIcon(
                      onPressed: () {},
                      iconColor: MMHelperFunctions.isDarkMode(context)
                          ? MMColors.black
                          : const Color.fromARGB(255, 255, 20, 20),
                    )
                  ],
                ),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: NestedScrollView(
                  headerSliverBuilder: (_, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        pinned: true,
                        floating: true,
                        backgroundColor: MMHelperFunctions.isDarkMode(context)
                            ? MMColors.black
                            : MMColors.textWhite,
                        expandedHeight: 440,
                        flexibleSpace: Padding(
                          padding: EdgeInsets.all(MMSizes.defaultSpace),
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              MMSearchContainer(
                                text: 'Поиск',
                                showBorder:
                                    MMHelperFunctions.isDarkMode(context)
                                        ? false
                                        : true,
                                padding: EdgeInsets.zero,
                              ),
                              const SizedBox(height: MMSizes.spaceBtwSections),
                              MMSectionHeading(
                                  title: 'Различные товары',
                                  onPressed: () =>
                                      Get.to(() => AllBrandsScreen())),
                              const SizedBox(
                                  height: MMSizes.spaceBtwItems / 1.5),
                              MMGridLayout(
                                  itemCount: 4,
                                  mainAxisExtent: 80,
                                  itemBuilder: (_, index) {
                                    return const MMBrandCart(
                                      showBorder: true,
                                    );
                                  }),
                            ],
                          ),
                        ),
                        bottom: const MMTabBar(tabs: [
                          Tab(child: Text('Sports')),
                          Tab(child: Text('Furniture')),
                          Tab(child: Text('Electronics')),
                          Tab(child: Text('Clothes')),
                          Tab(child: Text('Cossmetics')),
                        ]),
                      )
                    ];
                  },
                  body: const TabBarView(
                    children: [
                      MMCategoryTab(),
                      MMCategoryTab(),
                      MMCategoryTab(),
                      MMCategoryTab(),
                      MMCategoryTab(),
                    ],
                  )),
            )));
  }
}
