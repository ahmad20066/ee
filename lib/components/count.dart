import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountWidget extends StatelessWidget {
  final String title;
  final Color color;
  final int count;
  CountWidget({
    required this.color,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 6,
        child: Container(
          alignment: Alignment.center,
          height: 80.h,
          child: Row(
            children: [
              Container(
                width: 3.w,
                color: color,
              ),
              Expanded(
                child: ListTile(
                  leading: Text(
                    count > 9 ? "$count" : "0$count",
                    style: TextStyle(color: color, fontSize: 45.sp),
                  ),
                  title: Text(
                    title,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
