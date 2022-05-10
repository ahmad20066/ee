// ignore_for_file: prefer_const_constructors

import 'package:clinic/components/custom_button.dart';
import 'package:clinic/modules/home/home_screen.dart';
import 'package:clinic/modules/intro/intro_controller.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'dart:io' show Platform;

class IntroScreen2 extends StatelessWidget {
  static const routeName = '/Intro2';

  int registersCount = 3092;
  int finishedSessions = 1926;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
            width: double.infinity,
          ),
          SizedBox(
            width: 240.w,
            child: Text(
              "MAXIMIZE YOUR POTENTIALS AND POSSIBILITIES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.sp, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            //Text with purple and green color
            text: TextSpan(
                text: "Learn the secrets to ",
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 35, 4, 92)),

                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                      text: "Life Success,",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  TextSpan(text: "\n\n these people have got the \n key."),
                ]),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Countup(
                begin: 0,
                end: registersCount.toDouble(),
                duration: Duration(seconds: 1),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '+',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text("\n REGISTERED ENROLLS.",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 4, 92))),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Countup(
                begin: 0,
                end: finishedSessions.toDouble(),
                duration: Duration(seconds: 1),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '+',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text("\n FINISHED SESSIONS.",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 4, 92))),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "100%",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
          Text("\n SATISFACTION RATE.",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 4, 92))),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
              onTap: () {
                Get.toNamed(
                  HomeScreen.routeName,
                );
              },
              text: "Continue",
              width: 200.w,
              height: 40.h,
              icon: Platform.isAndroid
                  ? Icons.arrow_forward
                  : Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
