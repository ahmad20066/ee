import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final bool isFilled;
  final String text;
  final VoidCallback onTap;
  AuthButton({required this.isFilled, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 30.w, right: 30.w),
        height: 40.h,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(40),
            color: isFilled
                ? Theme.of(context).colorScheme.primary
                : Colors.white),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 17.sp,
              color: isFilled
                  ? Colors.white
                  : Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
