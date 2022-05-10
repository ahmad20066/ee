import 'package:clinic/modules/cart/cart_controller.dart';
import 'package:clinic/modules/home/home_controller.dart';
import 'package:clinic/modules/profile/profile_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.put(ProfileController(), permanent: true);
    Get.put(CartController());
  }
}
