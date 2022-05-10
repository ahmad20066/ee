import 'package:clinic/modules/courses/course_controller.dart';
import 'package:get/get.dart';

class CoursesGridBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CourseGridController());
    // TODO: implement dependencies
  }
}
