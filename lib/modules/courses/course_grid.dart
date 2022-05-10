import 'dart:math';

import 'package:clinic/components/course_widget.dart';
import 'package:clinic/components/inner_listtile.dart';
import 'package:clinic/modules/courses/course_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CourseGrid extends StatelessWidget {
  static const routeName = '/Grid';

  CourseGridController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Courses"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "We found ${controller.coursesCount} courses available for you",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            //filters List
            Material(
              elevation: 3,
              child: SizedBox(
                width: 250.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Obx(() {
                    return ExpansionTile(
                      key: Key(controller.key.toString()),
                      leading: Icon(Icons.filter_list_sharp),
                      title: Obx(() => Text(
                          "Sort By : ${controller.selectedFilter.toString().split('.')[1]}")),
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      children: [
                        ListTile(
                          title: const Text("Default"),
                          onTap: () {
                            controller.selectedFilter.value = Filter.Default;
                            controller.key.value = Random().nextInt(10000);
                          },
                        ),
                        const Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        ListTile(
                          title: const Text("Popularity"),
                          onTap: () {
                            controller.selectedFilter.value = Filter.Popularity;
                            controller.key.value = Random().nextInt(10000);
                          },
                        ),
                        const Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        ListTile(
                          title: const Text("Price : Low to High"),
                          onTap: () {
                            controller.selectedFilter.value = Filter.LowToHigh;
                            controller.key.value = Random().nextInt(10000);
                          },
                        ),
                        const Divider(
                          height: 1,
                          thickness: 2,
                        ),
                        ListTile(
                          title: const Text("Price : High to Low"),
                          onTap: () {
                            controller.selectedFilter.value = Filter.HighToLow;
                            controller.key.value = Random().nextInt(10000);
                          },
                        )
                      ],
                    );
                  }),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: controller.courses.length,
                itemBuilder: (context, index) {
                  return CourseWidget(
                      id: controller.courses[index].id,
                      title: controller.courses[index].title,
                      imageUrl: controller.courses[index].imageUrl,
                      price: controller.courses[index].price,
                      lessonsCount: controller.courses[index].lessonsCount!,
                      studentsCount: controller.courses[index].studentsCount!);
                })
          ],
        ),
      ),
    );
  }
}
