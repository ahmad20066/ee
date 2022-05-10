import 'dart:math';

import 'package:clinic/models/course_model.dart';
import 'package:clinic/models/instructor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Filter {
  Default,
  Popularity,
  Latest,
  LowToHigh,
  HighToLow,
}

class CourseGridController extends GetxController {
  final int coursesCount = 22;
  Rx<Filter> selectedFilter = Filter.LowToHigh.obs;
  RxInt key = Random().nextInt(10000000).obs;

  final List<CourseModel> courses = [
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
        studentsCount: 51)
  ];
}
