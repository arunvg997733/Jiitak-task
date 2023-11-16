import 'package:get/get.dart';

class StampScreenController extends GetxController {
  RxInt currentIndex = 1.obs;

  onChange(int value) {
    currentIndex.value = value + 1;
  }
}
