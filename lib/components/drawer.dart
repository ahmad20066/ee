import 'package:clinic/components/inner_listtile.dart';
import 'package:clinic/components/outer_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: null,
        appBar: AppBar(
          toolbarHeight: 60.h,
          actions: [Container()], //to remove end drawer icon
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
                //Max coach title
                text: "Max",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 6, 9, 100),
                    fontSize: 25.sp),
                children: const [
                  TextSpan(
                      text: "Coach",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ))
                ]),
          ),
        ),
        body: Stack(
          children: [
            const Image(
              image: NetworkImage(
                  "https://template.hasthemes.com/maxcoach/maxcoach/assets/images/bg/mobile-bg.jpg"),
              fit: BoxFit.fill,
              color: Color.fromARGB(255, 69, 34, 133),
              colorBlendMode: BlendMode.modulate,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  OuterListtile(
                    //Home tile
                    title: "Home",
                    children: [
                      InnerListtile(title: "Max Coach Education"),
                      InnerListtile(title: "Course Portal"),
                      InnerListtile(title: "Distant Learning"),
                      InnerListtile(title: "MultiMedia Pedagogy"),
                      InnerListtile(title: "Modern Schooling"),
                      InnerListtile(title: "Remote Training"),
                      InnerListtile(title: "Health Coaching"),
                      InnerListtile(title: "Gym Coaching"),
                      InnerListtile(title: "Business"),
                      InnerListtile(title: "Artist"),
                      InnerListtile(title: "Kitchen Coach"),
                      InnerListtile(title: "Motivation"),
                    ],
                  ),
                  OuterListtile(title: "Pages", children: [
                    //Pages tile
                    InnerListtile(title: "Start Here"),
                    InnerListtile(title: "Success Story"),
                    InnerListtile(title: "About me"),
                    InnerListtile(title: "About us 01"),
                    InnerListtile(title: "About us 02"),
                    InnerListtile(title: "About us 03"),
                    InnerListtile(title: "Contact me"),
                    InnerListtile(title: "Contact us"),
                    InnerListtile(title: "Purchase Guide"),
                    InnerListtile(title: "Privacy Policy"),
                    InnerListtile(title: "Terms of Service"),
                  ]),
                  OuterListtile(title: "Courses", children: [
                    //Courses tile
                    InnerListtile(title: "Courses Grid 01"),
                    InnerListtile(title: "Courses Grid 02"),
                    InnerListtile(title: "Courses Grid 03"),
                    InnerListtile(title: "Membership Levels"),
                    InnerListtile(title: "Become a teacher"),
                    InnerListtile(title: "Profile"),
                    InnerListtile(title: "Checkout"),
                    ExpansionTile(
                        //"SIngle Layout tile"
                        iconColor: Colors.white,
                        //expandedCrossAxisAlignment: CrossAxisAlignment.center,
                        collapsedIconColor: Colors.white,
                        title: Text(
                          "Single Layout",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                InnerListtile(title: "Free Course"),
                                InnerListtile(title: "Sticky Features Bar"),
                                InnerListtile(title: "Standard Sidebar"),
                                InnerListtile(title: "No Sidebar"),
                              ],
                            ),
                          ),
                        ])
                  ]),
                  OuterListtile(title: "Event", children: [
                    //Event tile
                    InnerListtile(title: 'Event'),
                    InnerListtile(title: 'Zoom Meetings'),
                    InnerListtile(title: 'Event Details'),
                    InnerListtile(title: 'Zoom Meeting Details'),
                  ]),
                  OuterListtile(title: "Blog", children: [
                    InnerListtile(title: "Blog Grid"),
                    InnerListtile(title: "Blog Masonry"),
                    InnerListtile(title: "Blog Classic"),
                    InnerListtile(title: "Blog List"),
                  ]),
                  OuterListtile(title: "Shop", children: [
                    InnerListtile(title: "Shop Left Sidebar"),
                    InnerListtile(title: "Shop Right Sidebar"),
                    InnerListtile(title: "Cart"),
                    InnerListtile(title: "Cart Empty"),
                    InnerListtile(title: "Wishlist"),
                    InnerListtile(title: "Single Product"),
                    InnerListtile(title: "My Account"),
                    InnerListtile(title: "Login Register"),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
