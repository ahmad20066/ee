import 'package:clinic/components/count.dart';
import 'package:clinic/components/course_widget.dart';
import 'package:clinic/components/socialmedia_account.dart';
import 'package:clinic/modules/profile/profile_controller.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  ProfileController controller = Get.put(ProfileController(), tag: "2");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
          ),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Image.network(
                                  controller.currentUser.imageUrl)),
                          SizedBox(
                            height: 10.h,
                          ),
                          Align(
                            alignment: Alignment(-0.9, 1),
                            child: Text(
                              controller.currentUser.name,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Align(
                            alignment: Alignment(-0.9, 1),
                            child: Text(
                              "/${controller.currentUser.role}",
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          //Description
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              controller.currentUser.description,
                              style: TextStyle(fontSize: 15.sp, height: 1.3.h),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Align(
                            alignment: Alignment(-0.9, 1),
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 20.sp),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          //Phone Number and email
                          Align(
                            alignment: Alignment(-0.6, 1),
                            child: RichText(
                              text: TextSpan(
                                  text: "Phone Number : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text:
                                            controller.currentUser.phoneNumber,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "\n\nEmail : ",
                                    ),
                                    TextSpan(
                                        text: controller.currentUser.email,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          //Socail Media Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SocialMediaIcon(
                                  asset: "images/twitter.png", onTap: () {}),
                              SocialMediaIcon(
                                  asset: "images/facebook.png", onTap: () {}),
                              SocialMediaIcon(
                                  asset: "images/instagram.png", onTap: () {}),
                              SocialMediaIcon(
                                  asset: "images/pinterest.png", onTap: () {}),
                              SocialMediaIcon(
                                  asset: "images/youtube.png", onTap: () {}),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TabBar(
                              indicatorColor:
                                  Theme.of(context).colorScheme.primary,
                              labelStyle: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.bold),
                              labelColor: Colors.black,
                              tabs: const [
                                Tab(
                                  child: Text("Dashboard"),
                                ),
                                Tab(
                                  child: Text("Courses"),
                                ),
                                Tab(
                                  child: Text("Quizes"),
                                )
                              ]),
                        ],
                      ),
                    ),
                  ]),
                ),
              ];
            },
            body: TabBarView(
              children: [
                /// Each content from each tab will have a dynamic height
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        CountWidget(
                            color: Colors.green,
                            title: "Courses Completed",
                            count: controller.currentUser.completedCourses),
                        SizedBox(
                          height: 10.h,
                        ),
                        CountWidget(
                            color: Colors.orange,
                            title: "Courses In Progress",
                            count: controller.currentUser.uncompletedCourse)
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ListView.builder(
                      itemCount: controller.currentUser.courses.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final course = controller.currentUser.courses[index];
                        return CourseWidget(
                            id: course.id,
                            title: course.title,
                            imageUrl: course.imageUrl,
                            price: course.price,
                            lessonsCount: course.lessonsCount!,
                            studentsCount: course.studentsCount!);
                      }),
                ),
                Container(),
              ],
            ),
          ),
        ));
  }
}
