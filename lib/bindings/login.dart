import 'package:clinic/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
