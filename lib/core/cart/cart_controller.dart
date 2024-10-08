import 'package:get/get.dart';

class CartController extends GetxController {
  RxInt current = 0.obs;
  RxBool isDiscont = false.obs;
  void increment(int num) {
    while (current.value < num) {
      current++;
    }
  }

  void decrement(int num) {
    while (current.value > num) {
      current--;
    }
  }
}
