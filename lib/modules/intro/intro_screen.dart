import 'package:clinic/components/custom_button.dart';
import 'package:clinic/modules/intro/intro2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' show Platform;

import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/IntroScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 140.h,
          ),
          Text(
            "MAX COACH IS THE LIFEBUY",
            style: TextStyle(
                fontSize: 20.sp, color: Color.fromARGB(255, 35, 4, 92)),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 240.w,
            child: Text(
              "In Mentoring 2B a Better You",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 35.sp,
                  color: Color.fromARGB(255, 35, 4, 92),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "the right mentoring relationship can be a powerful tool for professional growth. Bark up the right tree",
              style: TextStyle(fontSize: 20.sp),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50.h),
          CustomButton(
            //download guide
            onTap: () {
              //TODO : add download function
            },

            text: "Download free guide",
            width: 200.w,
            height: 50.h,
            icon: Icons.download,
          ),
          SizedBox(height: 30.h),
          InkWell(
            //Skip button
            onTap: (() {
              Get.offNamed(IntroScreen2.routeName);
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Skip for now ",
                  style: TextStyle(fontSize: 17.sp),
                ),
                Icon(
                  Platform.isAndroid
                      ? Icons.arrow_forward
                      : Icons.arrow_forward_ios,
                  size: 17.sp,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
