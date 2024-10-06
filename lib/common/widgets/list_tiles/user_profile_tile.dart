import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/images/mm_circular_image.dart';
import 'package:kitsmart/utils/constants/colors.dart';
import 'package:kitsmart/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class MMUserProfileTitle extends StatelessWidget {
  const MMUserProfileTitle({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MMCircularImage(
          image: MMImages.user, width: 50, height: 50, padding: 0),
      title: Text('Coding with MM',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MMColors.textWhite)),
      subtitle: Text('maronwislon@bk.ru',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: MMColors.textWhite)),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: MMColors.textWhite,
          )),
    );
  }
}
