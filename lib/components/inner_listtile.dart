import 'package:clinic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InnerListtile extends StatelessWidget {
  final String title;
  final String? route;
  final Color color;

  InnerListtile({required this.title, this.route, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.h,
      child: ListTile(
        onTap: () {
          // Get.toNamed(route);
        },
        title: Text(
          title,
          style: TextStyle(
              fontSize: 12.sp, color: color, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
