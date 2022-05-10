import 'package:clinic/modules/courses/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<DetailsController>(DetailsController());
  }
}
