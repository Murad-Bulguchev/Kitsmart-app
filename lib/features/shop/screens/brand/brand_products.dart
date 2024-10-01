import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/brand/mm_brand_cart.dart';
import 'package:flutter_application_2/common/widgets/producst/sortable/sortable_products.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MMAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MMSizes.defaultSpace),
        child: Column(
          children: [
            MMBrandCart(showBorder: true),
            SizedBox(height: MMSizes.spaceBtwSections),

            MMSortableProducts()
          ],
        ),
        ),
      ),
    );
  }
}
