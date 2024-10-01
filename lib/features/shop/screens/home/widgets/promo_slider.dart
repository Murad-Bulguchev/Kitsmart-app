import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:flutter_application_2/features/shop/controllers/home_controler.dart';
import 'package:get/get.dart';

class MMPromoSlider extends StatelessWidget {
  const MMPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeControler());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.8,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            aspectRatio: 2,
            autoPlay: true,
            height: 150,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: banners
              .map((url) => Transform.scale(
                    scale: 0.98, // Adjust the scale factor to fit your needs
                    child: MMRoudedImage(
                        width: double.infinity,
                        applyImageRadius: true,
                        imageUrl: url),
                  ))
              .toList(),
        ),
        // Center(
        //   child: Obx(
        //     () => Row(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         for (int i = 0; i < banners.length; i++)
        //           MMCircularContainer(
        //             width: 20,
        //             height: 4,
        //             margin: const EdgeInsets.only(right: 10),
        //             backgroundColor: controller.carouselCurrentIndex.value == i
        //                 ? MMColors.primaryColor
        //                 : MMColors.grey,
        //           ), // TCircularContainer
        //       ],
        //     ), // Row
        //   ),
        // ) // Obx
      ],
    ); // Column
  }
}
