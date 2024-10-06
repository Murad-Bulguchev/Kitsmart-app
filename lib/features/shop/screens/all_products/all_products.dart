import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/appbar/appbar.dart';
import 'package:kitsmart/common/widgets/producst/sortable/sortable_products.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MMAppBar(title: Text('Популярные продукты'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MMSizes.defaultSpace),
            child: MMSortableProducts()),
      ),
    );
  }
}
