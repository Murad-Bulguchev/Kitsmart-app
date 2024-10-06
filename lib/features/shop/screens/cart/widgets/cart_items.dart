import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/producst/cart/add_remove_button.dart';
import 'package:kitsmart/common/widgets/producst/product_cards/product_price_text.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class MMCartItems extends StatelessWidget {
  const MMCartItems({super.key, this.showAddRemoveButtons = true});
  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, __) => Column(
              children: [
                const MMCartItems(),
                if (showAddRemoveButtons)
                  const SizedBox(height: MMSizes.spaceBtwItems),
                if (showAddRemoveButtons)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          MMProductQuantityWithAddRemoveButton(),
                        ],
                      ),
                      MMProductPriceText(
                        price: '255',
                      )
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) =>
            const SizedBox(height: MMSizes.spaceBtwSections),
        itemCount: 2);
  }
}
