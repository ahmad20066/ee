import 'package:clinic/modules/courses/details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CourseWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final int lessonsCount;
  final int studentsCount;
  final String id;
  CourseWidget(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.lessonsCount,
      required this.studentsCount});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(CourseDetails.routeName, arguments: id);
        },
        child: Card(
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Image.network(
                imageUrl,
                height: 200.h,
                frameBuilder: (_, image, loadingBuilder, __) {
                  if (loadingBuilder == null) {
                    return SizedBox(
                      height: 200.h,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return image;
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.h),
                color: Colors.white,
                //width: 320.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                      width: double.infinity,
                    ),
                    //Price
                    Align(
                      alignment: Alignment(-0.7, 0),
                      child: Text(
                        "$price\$",
                        style: TextStyle(
                            fontSize: 23.sp,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    //title
                    Align(
                      alignment: Alignment(-0.4, 0),
                      child: SizedBox(
                        width: 180.w,
                        child: Text(
                          title,
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.receipt_outlined),
                            Text("$lessonsCount Lessons"),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.person_outline),
                            Text("$studentsCount Students"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
