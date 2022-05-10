// ignore_for_file: unnecessary_null_comparison

import 'package:clinic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularCourseWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  PopularCourseWidget(
      {required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            frameBuilder: (_, image, loadingBuilder, __) {
              if (loadingBuilder == null) {
                return const SizedBox(
                  height: 200,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              return image;
            },
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                // height: 40.h,
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Constants.textColor,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
