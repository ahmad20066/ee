import 'package:clinic/models/course_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<CourseModel> popularCourses = [
    CourseModel(
        instructorId: 'i1',
        id: "c1",
        title: "Customer-centric Info-Tech Strategies",
        description:
            "Now more than ever, corporations are investing heavily in IT. The quality of these investments affects the daily … ",
        imageUrl:
            "https://template.hasthemes.com/maxcoach/maxcoach/assets/images/courses/370/course-2.jpg",
        price: 20.0)
  ];
}
