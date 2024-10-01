import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/producst_card_vertical.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class MMSortableProducts extends StatelessWidget {
  const MMSortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: MMSizes.spaceBtwSections),
        MMGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const MMProductCardVertical())
      ],
    );
  }
}
