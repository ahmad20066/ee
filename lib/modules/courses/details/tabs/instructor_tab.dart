import 'package:clinic/components/custom_button.dart';
import 'package:clinic/components/socialmedia_account.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructorTab extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;
  final String description;
  InstructorTab(
      {required this.description,
      required this.name,
      required this.role,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              // This is the flip side of the SliverOverlapAbsorber
              // above.
              handle: ExtendedNestedScrollView.sliverOverlapAbsorberHandleFor(
                  context),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Image.network(imageUrl)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("/${role}"),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 15.sp, height: 1.3.h),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
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
                    height: 30.h,
                  ),
                  CustomButton(
                      padding: EdgeInsets.only(left: 10.w, right: 110.w),
                      text: "Buy Membership",
                      width: 0,
                      height: 40.h,
                      onTap: () {}),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomButton(
                      padding: EdgeInsets.only(left: 10.w, right: 120.w),
                      text: "Buy this course",
                      width: 0,
                      height: 40.h,
                      onTap: () {}),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomButton(
                      icon: Icons.share,
                      padding: EdgeInsets.only(left: 10.w, right: 90.w),
                      text: "Share this course",
                      width: 0,
                      height: 40.h,
                      onTap: () {}),
                ]),
              ),
            ),
          ],
        );
      }),
    );
  }
}
