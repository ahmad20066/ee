import 'package:clinic/modules/intro/intro_screen.dart';
import 'package:clinic/modules/intro/welcome_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  Future<void> onReady() async {
    await Future.delayed(Duration(seconds: 4));
    Get.offNamed(WelcomeScreen.routeName);
    super.onReady();
  }
}
