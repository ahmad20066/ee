import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String _title;

  Delegate(this.backgroundColor, this._title);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.all(10),
      color: backgroundColor,
      child: Center(
        child: Text(
          _title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 60.h;

  @override
  double get minExtent => 30.h;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
