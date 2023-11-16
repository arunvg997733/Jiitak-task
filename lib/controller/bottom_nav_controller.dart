import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;

  onTap(int value) {
    currentIndex.value = value;
  }
}
