import 'package:carousel_slider/carousel_slider.dart';
import 'package:clinic/components/categories_widget.dart';
import 'package:clinic/components/popular_course_widget.dart';
import 'package:clinic/components/drawer.dart';
import 'package:clinic/constants.dart';
import 'package:clinic/models/course_model.dart';
import 'package:clinic/modules/cart/cart_controller.dart';
import 'package:clinic/modules/cart/cart_screen.dart';
import 'package:clinic/modules/courses/course_grid.dart';
import 'package:clinic/modules/home/home_controller.dart';
import 'package:clinic/modules/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  HomeController controller = Get.find();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
              //Max coach title
              text: "Max",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 6, 9, 100),
                  fontSize: 20.sp),
              children: const [
                TextSpan(
                    text: "Coach",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ))
              ]),
        ),
        actions: [
          //shopping cart icon
          Obx(
            () => Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Get.toNamed(CartScreen.routeName);
                    },
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    )),
                Positioned(
                  left: 20.w,
                  top: 4.h,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 7.w,
                    child: Text(
                      "${cartController.cartCount.value}",
                      style: TextStyle(fontSize: 10.sp, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          IconButton(
              //profile icon
              onPressed: () {
                Get.toNamed(ProfileScreen.routeName);
              },
              icon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.black,
              )),
          IconButton(
              //search icon
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              //end drawer icon
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: const Icon(
                Icons.dehaze,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Stack(
              children: [
                CarouselSlider(
                    items: controller.popularCourses
                        .map((element) => PopularCourseWidget(
                              title: element.title,
                              imageUrl: element.imageUrl,
                              description: element.description,
                            ))
                        .toList(),
                    options: CarouselOptions(autoPlay: true, height: 230.h)),
                Positioned(
                  left: 10.w,
                  child: Text(
                    "Popular \n Courses:",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'WaterBrush',
                        color: Colors.purple[900]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 70.h,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Online",
                      style: TextStyle(
                          color: Constants.textColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: " Coaching Lessons",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            )),
                        TextSpan(text: " For \n Remote Learning.")
                      ])),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                CategoryWidget(
                    onTap: () {
                      Get.toNamed(CourseGrid.routeName);
                    },
                    title: "Ask Consultancy",
                    asset: "images/ask.png",
                    inkwellText: "Get free Quote",
                    description:
                        "Make a reservation with our special consultant to learn what's best for your dream career."),
                CategoryWidget(
                    onTap: () {},
                    title: "Self Developement",
                    asset: "images/self.png",
                    description:
                        "Develop skills for career of various majors including computer science & language competence.",
                    inkwellText: "Discover now"),
                CategoryWidget(
                    onTap: () {},
                    title: "Life Mentoring",
                    asset: "images/life.png",
                    description:
                        "Get some soul healing and guidance for your future career and vocational directions.",
                    inkwellText: "Start here"),
                CategoryWidget(
                    onTap: () {},
                    title: "Remote Learning",
                    asset: "images/remote.png",
                    description:
                        "Learn from anywhere in the world on desktop, tablet or mobile phone with an Internet connection.",
                    inkwellText: "Start Now")
              ],
            )
          ],
        ),
      ),
    );
  }
}
