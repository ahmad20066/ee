import 'package:clinic/modules/courses/course_controller.dart';
import 'package:clinic/modules/courses/details/details_controller.dart';
import 'package:clinic/modules/courses/details/tabs/circulum_tab.dart';
import 'package:clinic/modules/courses/details/tabs/instructor_tab.dart';
import 'package:clinic/modules/courses/details/tabs/overview.dart';
import 'package:clinic/modules/courses/details/tabs/review_tab.dart';

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';

class CourseDetails extends StatelessWidget {
  static const routeName = '/details';
  DetailsController controller = Get.find();
  CourseGridController gridController = Get.find();

  @override
  Widget build(BuildContext context) {
    final id = Get.arguments;
    final course =
        gridController.courses.firstWhere((element) => element.id == id);

    return DefaultTabController(
      length: controller.tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ExtendedNestedScrollView(
          onlyOneScrollInBody: true,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: TabBarView(children: [
                    //OverView Tab
                    OverView(description: course.description),
                    //Circulum
                    CirculumTab(
                      topics: controller.topics,
                    ),
                    //Instructor
                    InstructorTab(
                        description: controller.instructor.description,
                        name: controller.instructor.name,
                        role: controller.instructor.role,
                        imageUrl: controller.instructor.imageUrl),
                    ReviewsTab()
                  ]),
                ),
              ),
            ],
          ),
          headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                SliverOverlapAbsorber(
                  handle:
                      ExtendedNestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                  //pinned title and tab bar
                  sliver: SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: FlexibleHeaderDelegate(
                          leading: Align(
                              alignment: Alignment(-0.9, -0.9),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 12.h,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(Icons.arrow_back),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              )),
                          expandedHeight: 200.h,
                          collapsedHeight: 110.h,
                          children: [
                            //Course title
                            FlexibleTextItem(
                              collapsedPadding:
                                  EdgeInsets.only(left: 30.w, right: 20.w),
                              textAlign: TextAlign.center,
                              text: course.title,
                              collapsedAlignment: Alignment(-0.3, -0.6),
                              expandedPadding: EdgeInsets.all(10),
                              collapsedStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Theme.of(context).colorScheme.primary),
                              expandedStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold),
                              expandedAlignment: Alignment(0, -0.5),
                            ),

                            SizedBox(
                              height: 10.h,
                            ),
                            //Tab bar
                            Align(
                                alignment: Alignment(0, 1),
                                child: Container(
                                  color: Colors.white,
                                  child: TabBar(
                                    indicatorColor:
                                        Theme.of(context).colorScheme.primary,
                                    labelColor: Colors.black,
                                    labelStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                    tabs: controller.tabs,
                                  ),
                                )),
                          ],
                          //image and other info that dissapear when scrolling
                          background: MutableBackground(
                            animationDuration: Duration(milliseconds: 500),
                            expandedWidget: Stack(
                              fit: StackFit.expand,
                              children: [
                                //Course image
                                Image.network(
                                  course.imageUrl,
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Colors.black54,
                                  colorBlendMode: BlendMode.darken,
                                ),

                                //course info
                                Positioned(
                                  top: 120.h,
                                  left: 80.w,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.receipt_outlined,
                                              color: Colors.white),
                                          Text(
                                            "${course.lessonsCount} Lessons",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.person_outline,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "${course.studentsCount} Students",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))),
                ),
              ]),
        ),
      ),
    );
  }
}
