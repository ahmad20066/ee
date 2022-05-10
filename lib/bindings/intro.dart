import 'package:clinic/modules/intro/intro_controller.dart';
import 'package:clinic/modules/profile/profile_controller.dart';
import 'package:get/get.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IntroController>(IntroController());

    // TODO: implement dependencies
  }
}
