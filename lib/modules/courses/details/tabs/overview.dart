import 'package:clinic/components/custom_button.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverView extends StatelessWidget {
  final String description;
  OverView({required this.description});

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
                  Text(
                    "Course Description",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  //Description
                  Text(
                    description,
                    style: TextStyle(
                        height: 1.2.h, fontSize: 15.sp, wordSpacing: 2),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  //Three buttons
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
