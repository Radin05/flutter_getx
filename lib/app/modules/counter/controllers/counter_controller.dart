import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu(){
    if (bilangan.value >= 20) {
      Get.snackbar('warning', 'udah ah cape');
    }else {
      bilangan.value++;
    }
  }

  void kurangSatu(){
    if (bilangan.value <= 0) {
      Get.snackbar('warning', 'cukup mas');
    }else {
      bilangan.value--;
    }
  }

  void reset(){
    bilangan.value = 0;
    Get.snackbar('Reset mas', '');
  }
}
