import 'package:get/get.dart';

class HomeControler extends GetxController {
  static HomeControler get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
