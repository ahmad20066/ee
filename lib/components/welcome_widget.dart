import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  WelcomeWidget({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.7, -0.4),
      child: RichText(
          text: TextSpan(
              text: title,
              style: TextStyle(
                  height: 1.3.h,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
              children: [
            TextSpan(
                text: "\n$subtitle",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500))
          ])),
      height: 130.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 6,
                color: Theme.of(context).shadowColor,
                offset: Offset(0.5, 1))
          ],
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))),
    );
  }
}
