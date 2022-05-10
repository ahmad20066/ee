import 'package:clinic/models/course_model.dart';
import 'package:clinic/models/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final currentUser = UserModel(
      role: "Advanced Educator",
      id: 'u1',
      name: 'Maggie Strickland',
      imageUrl:
          "https://template.hasthemes.com/maxcoach/maxcoach/assets/images/profile/instructor.jpeg",
      description:
          "Maggie is a brilliant educator, whose life was spent for computer science and love of nature. Being a female, she encountered a lot of obstacles and was forbidden to work in this field by her family. With a true spirit and talented gift, she was able to succeed and set an example for others.",
      email: "maggiestrickland.instructor@gmail.com",
      phoneNumber: "(+88) - 1990 - 8668",
      courses: [
        CourseModel(
            instructorId: "i1",
            id: "c2",
            title: "Learning to Write as a Professional Author",
            description:
                """The goal of this course is to take you, you beautiful front end developer you, from someone with very little or no jQuery or JavaScript knowledge and up you to someone who is quite comfortable working with and writing jQuery and JavaScript.
            
        There are other courses out there, this one is mine. We’ll make mistakes along the way. We’ll fix them. We’ll talk about theory. We’ll build practical, real things. """,
            imageUrl:
                "https://template.hasthemes.com/maxcoach/maxcoach/assets/images/courses/370/course-1.jpg",
            price: 40.00,
            lessonsCount: 20,
            studentsCount: 51),
      ],
      completedCourses: 2,
      uncompletedCourse: 10);
}
