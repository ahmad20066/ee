import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialAuth extends StatelessWidget {
  final String asset;
  Color? color;
  SocialAuth({required this.asset, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 8,
              color: Theme.of(context).colorScheme.primary,
              offset: Offset(0.5, 0.5))
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Image.asset(
        asset,
        height: 25.h,
        width: 25.w,
        color: color,
      ),
    );
  }
}
