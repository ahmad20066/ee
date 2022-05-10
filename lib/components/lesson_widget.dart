import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonWidget extends StatelessWidget {
  final bool isQuiz;
  final bool isEven;
  final String title;
  final int duration;

  LessonWidget({
    required this.duration,
    required this.isQuiz,
    required this.isEven,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: isEven ? Colors.grey[200] : Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                isQuiz ? Icons.timelapse_outlined : Icons.receipt,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment(-0.5, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red.withOpacity(0.4),
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(bottom: 10.h),
              child: Text(
                "$duration min",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
