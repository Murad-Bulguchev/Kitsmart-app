import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/producst/sortable/sortable_products.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MMAppBar(
          title: Text('Популярные продукты'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MMSizes.defaultSpace),
            child: MMSortableProducts()),
      ),
    );
  }
}
