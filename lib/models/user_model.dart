import 'package:clinic/models/course_model.dart';

class UserModel {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String email;
  final String phoneNumber;
  final List<CourseModel> courses;
  final int completedCourses;
  final int uncompletedCourse;
  final String? role;
  UserModel({
    required this.role,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.email,
    required this.phoneNumber,
    required this.courses,
    required this.completedCourses,
    required this.uncompletedCourse,
  });
}
